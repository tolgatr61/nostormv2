﻿//// <auto-generated <- Codemaid exclusion for now (PacketIndex Order is important for maintenance)

using OpenNos.Core;
using OpenNos.Domain;

namespace OpenNos.GameObject.CommandPackets
{
    [PacketHeader("$Event", PassNonParseablePacket = true, Authorities = new AuthorityType[]{ AuthorityType.TeamManager } )]
    public class EventPacket : PacketDefinition
    {
        #region Properties

        [PacketIndex(0)]
        public EventType EventType { get; set; }

        [PacketIndex(1)]
        public int LvlBracket { get; set; }

        public static string ReturnHelp() => "$Event <Event> <LevelBracket>";

        #endregion
    }
}