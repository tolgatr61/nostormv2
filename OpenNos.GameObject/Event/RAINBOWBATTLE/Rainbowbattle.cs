﻿using OpenNos.Core;
using OpenNos.Domain;
using OpenNos.GameObject.Helpers;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Reactive.Linq;
using System.Threading;
using OpenNos.GameObject.Networking;

namespace OpenNos.GameObject.Event.RainbowBattle
{
    public static class RainbowBattle
    {
        #region Methods

        public static void GenerateRainbowBattle()
        {
            ServerManager.Instance.Broadcast(UserInterfaceHelper.GenerateMsg(string.Format(Language.Instance.GetMessageFromKey("RAINBOWBATTLE_OPEN_REGISTER")), 0));
            ServerManager.Instance.Broadcast(UserInterfaceHelper.GenerateMsg(string.Format(Language.Instance.GetMessageFromKey("RAINBOWBATTLE_OPEN_REGISTER")), 1));
            ServerManager.Instance.CanRegisterRainbowBattle = true;
            Thread.Sleep(1 * 40 * 100);
            ServerManager.Instance.CanRegisterRainbowBattle = false;
            Thread.Sleep(1 * 100);
            ServerManager.Instance.EventInWaiting = true;
            Thread.Sleep(1 * 100);
            ServerManager.Instance.Sessions.Where(s => s.Character?.IsWaitingForEvent == false).ToList().ForEach(s => s.SendPacket("esf"));
            ServerManager.Instance.EventInWaiting = false;
            IEnumerable<RainbowBattleMember> sessions = ServerManager.Instance.RainbowBattleMembersRegistered.Where(s => s.Session.CurrentMapInstance.MapInstanceType == MapInstanceType.BaseMapInstance);

            ServerManager.Instance.RainbowBattleMembersRegistered = new List<RainbowBattleMember>();
            ServerManager.Instance.RainbowBattleMembers = new List<RainbowBattleMember>();

            List<Tuple<MapInstance, byte>> maps = new List<Tuple<MapInstance, byte>>();
            MapInstance map = null;

            long? LastGroupId = -1;
            int LastColor = 0;
            int i = 0;
            byte y = 0;
            List<RainbowBattleTeam> rainbowbattleTeam = new List<RainbowBattleTeam>();
            RainbowBattleTeam rainbowbattle = new RainbowBattleTeam();
            rainbowbattle.Member = new List<RainbowBattleMember>();
            rainbowbattle.Session = new List<ClientSession>();
            foreach (RainbowBattleMember s in sessions.OrderBy(s => s.GroupId))
            {
                rainbowbattle.Member.Add(s);
                rainbowbattle.Session.Add(s.Session);
                if (LastGroupId != s.GroupId)
                {
                    if (rainbowbattle.Member.Count() > 1)
                    {
                        if (rainbowbattle != null)
                        {
                            rainbowbattle.Color = LastColor == 1 ? RainbowBattleTeamType.RED : RainbowBattleTeamType.BLUE;
                            rainbowbattle.Points = 0;
                            LastColor = rainbowbattle.Color == RainbowBattleTeamType.BLUE ? 1 : 0;
                            rainbowbattleTeam.Add(rainbowbattle);
                            i++;
                            y++;
                            if (i == 2)
                            {
                                map = ServerManager.GenerateMapInstance(2010, MapInstanceType.RainbowBattleInstance, new InstanceBag());
                                maps.Add(new Tuple<MapInstance, byte>(map, y));
                                i = 0;
                                foreach (RainbowBattleTeam at in rainbowbattleTeam)
                                {
                                    int w = 0;
                                    foreach (ClientSession sess in at.Session)
                                    {
                                        ServerManager.Instance.ChangeMapInstance(s.Session.Character.CharacterId, map.MapInstanceId, (short)(at.Color == RainbowBattleTeamType.RED ? 1 : 118), (short)(26 + (w * 3)));
                                        w++;
                                        sess.Character.NoMove = true;
                                    }
                                }
                            }
                        }
                        rainbowbattle = new RainbowBattleTeam();
                        rainbowbattle.Member = new List<RainbowBattleMember>();
                        rainbowbattle.Session = new List<ClientSession>();
                    }
                }
                LastGroupId = s.GroupId;
            }
        }

        #endregion

        #region Classes

        public class MeteoriteGameThread
        {
            #region Members

            private MapInstance _map;

            #endregion

            #region Methods

            public void Run(MapInstance map)
            {
                _map = map;

                foreach (ClientSession session in _map.Sessions)
                {
                    ServerManager.Instance.TeleportOnRandomPlaceInMap(session, map.MapInstanceId);
                    if (session.Character.IsVehicled)
                    {
                        session.Character.RemoveVehicle();
                    }
                    if (session.Character.UseSp)
                    {
                        session.Character.LastSp = (DateTime.Now - Process.GetCurrentProcess().StartTime.AddSeconds(-50)).TotalSeconds;
                        ItemInstance specialist = session.Character.Inventory.LoadBySlotAndType((byte)EquipmentType.Sp, InventoryType.Wear);
                        if (specialist != null)
                        {
                            removeSP(session, specialist.ItemVNum);
                        }
                    }

                    session.Character.Speed = 12;
                    session.Character.IsVehicled = true;
                    session.Character.IsCustomSpeed = true;
                    session.Character.Morph = 1156;
                    session.Character.ArenaWinner = 0;
                    session.Character.MorphUpgrade = 0;
                    session.Character.MorphUpgrade2 = 0;
                    session.SendPacket(session.Character.GenerateCond());
                    session.Character.LastSpeedChange = DateTime.Now;
                    session.CurrentMapInstance?.Broadcast(session.Character.GenerateCMode());
                }

                int i = 0;

                while (_map?.Sessions?.Any() == true)
                {
                    runRound(i++);
                }

                //ended
            }

            private static IEnumerable<Tuple<short, int, short, short>> generateDrop(Map map, short vnum, int amountofdrop, int amount)
            {
                List<Tuple<short, int, short, short>> dropParameters = new List<Tuple<short, int, short, short>>();
                for (int i = 0; i < amountofdrop; i++)
                {
                    MapCell cell = map.GetRandomPosition();
                    dropParameters.Add(new Tuple<short, int, short, short>(vnum, amount, cell.X, cell.Y));
                }
                return dropParameters;
            }

            private static void removeSP(ClientSession session, short vnum)
            {
                if (session?.HasSession == true && !session.Character.IsVehicled)
                {
                    session.Character.DisableBuffs(BuffType.All);
                    session.Character.EquipmentBCards.RemoveAll(s => s.ItemVNum.Equals(vnum));
                    session.Character.UseSp = false;
                    session.Character.LoadSpeed();
                    session.SendPacket(session.Character.GenerateCond());
                    session.SendPacket(session.Character.GenerateLev());
                    session.Character.SpCooldown = 30;
                    if (session.Character.SkillsSp != null)
                    {
                        foreach (CharacterSkill ski in session.Character.SkillsSp.Where(s => !s.CanBeUsed(true)))
                        {
                            short time = ski.Skill.Cooldown;
                            double temp = (ski.LastUse - DateTime.Now).TotalMilliseconds + (time * 100);
                            temp /= 1000;
                            session.Character.SpCooldown = temp > session.Character.SpCooldown ? (int)temp : session.Character.SpCooldown;
                        }
                    }
                    session.SendPacket(session.Character.GenerateSay(string.Format(Language.Instance.GetMessageFromKey("STAY_TIME"), session.Character.SpCooldown), 11));
                    session.SendPacket($"sd {session.Character.SpCooldown}");
                    session.CurrentMapInstance?.Broadcast(session.Character.GenerateCMode());
                    session.CurrentMapInstance?.Broadcast(UserInterfaceHelper.GenerateGuri(6, 1, session.Character.CharacterId), session.Character.PositionX, session.Character.PositionY);

                    // ms_c
                    session.SendPacket(session.Character.GenerateSki());
                    session.SendPackets(session.Character.GenerateQuicklist());
                    session.SendPacket(session.Character.GenerateStat());

                    Logger.LogUserEvent("CHARACTER_SPECIALIST_RETURN", session.GenerateIdentity(), $"SpCooldown: {session.Character.SpCooldown}");

                    Observable.Timer(TimeSpan.FromMilliseconds(session.Character.SpCooldown * 1000)).Subscribe(o =>
                    {
                        session.SendPacket(session.Character.GenerateSay(Language.Instance.GetMessageFromKey("TRANSFORM_DISAPPEAR"), 11));
                        session.SendPacket("sd 0");
                    });
                }
            }

            private void runRound(int number)
            {
                int amount = 120 + (60 * number);

                int i = amount;
                while (i != 0)
                {
                    spawnCircle(number);
                    Thread.Sleep(60000 / amount);
                    i--;
                }
                Thread.Sleep(5000);
                _map.Broadcast(UserInterfaceHelper.GenerateMsg(string.Format(Language.Instance.GetMessageFromKey("METEORITE_ROUND"), number + 1), 0));
                Thread.Sleep(5000);

                // Your dropped reward
                _map.DropItems(generateDrop(_map.Map, 1046, 20, 200 * ((number + 1) > 10 ? 10 : (number + 1))).ToList());
                _map.DropItems(generateDrop(_map.Map, 1030, 10, 3 * ((number + 1) > 10 ? 10 : (number + 1))).ToList());
                _map.DropItems(generateDrop(_map.Map, 2282, 10, 3 * ((number + 1) > 10 ? 10 : (number + 1))).ToList());
                _map.DropItems(generateDrop(_map.Map, 2514, 5, 1 * ((number + 1) > 10 ? 10 : (number + 1))).ToList());
                _map.DropItems(generateDrop(_map.Map, 2515, 5, 1 * ((number + 1) > 10 ? 10 : (number + 1))).ToList());
                _map.DropItems(generateDrop(_map.Map, 2516, 5, 1 * ((number + 1) > 10 ? 10 : (number + 1))).ToList());
                _map.DropItems(generateDrop(_map.Map, 2517, 5, 1 * ((number + 1) > 10 ? 10 : (number + 1))).ToList());
                _map.DropItems(generateDrop(_map.Map, 2518, 5, 1 * ((number + 1) > 10 ? 10 : (number + 1))).ToList());
                _map.DropItems(generateDrop(_map.Map, 2519, 5, 1 * ((number + 1) > 10 ? 10 : (number + 1))).ToList());
                _map.DropItems(generateDrop(_map.Map, 2520, 5, 1 * ((number + 1) > 10 ? 10 : (number + 1))).ToList());
                _map.DropItems(generateDrop(_map.Map, 2521, 5, 1 * ((number + 1) > 10 ? 10 : (number + 1))).ToList());
                foreach (ClientSession session in _map.Sessions)
                {
                    // Your reward that every player should get
                }

                Thread.Sleep(30000);
            }

            private void spawnCircle(int round)
            {
                if (_map != null)
                {
                    MapCell cell = _map.Map.GetRandomPosition();

                    int circleId = _map.GetNextMonsterId();

                    MapMonster circle = new MapMonster { MonsterVNum = 2018, MapX = cell.X, MapY = cell.Y, MapMonsterId = circleId, IsHostile = false, IsMoving = false, ShouldRespawn = false };
                    circle.Initialize(_map);
                    circle.NoAggresiveIcon = true;
                    _map.AddMonster(circle);
                    _map.Broadcast(circle.GenerateIn());
                    _map.Broadcast(StaticPacketHelper.GenerateEff(UserType.Monster, circleId, 4660));
                    Observable.Timer(TimeSpan.FromSeconds(3)).Subscribe(observer =>
                    {
                        if (_map != null)
                        {
                            _map.Broadcast(StaticPacketHelper.SkillUsed(UserType.Monster, circleId, 3, circleId, 1220, 220, 0, 4983, cell.X, cell.Y, true, 0, 65535, 0, 0));
                            foreach (Character character in _map.GetCharactersInRange(cell.X, cell.Y, 2))
                            {
                                if (!_map.Sessions.Skip(3).Any())
                                {
                                    // Your reward for the last three living players
                                }
                                character.IsCustomSpeed = false;
                                character.RemoveVehicle();
                                Observable.Timer(TimeSpan.FromMilliseconds(1000)).Subscribe(o => ServerManager.Instance.AskRevive(character.CharacterId));
                            }
                            _map.RemoveMonster(circle);
                            _map.Broadcast(StaticPacketHelper.Out(UserType.Monster, circle.MapMonsterId));
                        }
                    });
                }
            }

            #endregion
        }

        #endregion
    }
}