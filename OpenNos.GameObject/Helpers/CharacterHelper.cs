﻿/*
 * This file is part of the OpenNos Emulator Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 */

using OpenNos.Domain;
using System;

namespace OpenNos.GameObject.Helpers
{
    public class CharacterHelper
    {
        #region Members

        private static int[,] _criticalDist;

        private static int[,] _criticalDistRate;

        private static int[,] _criticalHit;

        private static int[,] _criticalHitRate;

        private static int[,] _distDef;

        private static int[,] _distDodge;

        private static int[,] _distRate;

        private static double[] _firstJobXpData;

        private static double[] _heroXpData;

        private static int[,] _hitDef;

        private static int[,] _hitDodge;

        private static int[,] _hitRate;

        private static int[,] _hp;

        private static int[] _hpHealth;

        private static int[] _hpHealthStand;

        private static int[,] _magicalDef;

        private static int[,] _maxDist;

        private static int[,] _maxHit;

        private static int[,] _minDist;

        // difference between class
        private static int[,] _minHit;

        private static int[,] _mp;

        private static int[] _mpHealth;

        private static int[] _mpHealthStand;

        private static double[] _secondjobxpData;

        // STAT DATA
        private static byte[] _speedData;

        private static double[] _spxpData;

        // same for all class
        private static double[] _xpData;

        #endregion

        #region Instantiation

        public CharacterHelper()
        {
            loadSpeedData();
            loadJobXPData();
            loadSPXPData();
            loadHeroXpData();
            loadXPData();
            loadHPData();
            loadMPData();
            loadStats();
            loadHPHealth();
            loadMPHealth();
            loadHPHealthStand();
            loadMPHealthStand();
        }

        #endregion

        #region Properties

        public static double[] FirstJobXPData
        {
            get
            {
                if (_firstJobXpData == null)
                {
                    new CharacterHelper();
                }
                return _firstJobXpData;
            }
        }

        public static double[] HeroXpData
        {
            get
            {
                if (_heroXpData == null)
                {
                    new CharacterHelper();
                }
                return _heroXpData;
            }
        }

        public static int[,] HPData
        {
            get
            {
                if (_hp == null)
                {
                    new CharacterHelper();
                }
                return _hp;
            }
        }

        public static int[] HPHealth
        {
            get
            {
                if (_hpHealth == null)
                {
                    new CharacterHelper();
                }
                return _hpHealth;
            }
        }

        public static int[] HPHealthStand
        {
            get
            {
                if (_hpHealthStand == null)
                {
                    new CharacterHelper();
                }
                return _hpHealthStand;
            }
        }

        public static int[,] MPData
        {
            get
            {
                if (_mp == null)
                {
                    new CharacterHelper();
                }
                return _mp;
            }
        }

        public static int[] MPHealth
        {
            get
            {
                if (_mpHealth == null)
                {
                    new CharacterHelper();
                }
                return _mpHealth;
            }
        }

        public static int[] MPHealthStand
        {
            get
            {
                if (_mpHealthStand == null)
                {
                    new CharacterHelper();
                }
                return _mpHealthStand;
            }
        }

        public static double[] SecondJobXPData
        {
            get
            {
                if (_secondjobxpData == null)
                {
                    new CharacterHelper();
                }
                return _secondjobxpData;
            }
        }

        public static byte[] SpeedData
        {
            get
            {
                if (_speedData == null)
                {
                    new CharacterHelper();
                }
                return _speedData;
            }
        }

        public static double[] SPXPData
        {
            get
            {
                if (_spxpData == null)
                {
                    new CharacterHelper();
                }
                return _spxpData;
            }
        }

        public static double[] XPData
        {
            get
            {
                if (_xpData == null)
                {
                    new CharacterHelper();
                }
                return _xpData;
            }
        }

        #endregion

        #region Methods

        public static float ExperiencePenalty(byte playerLevel, byte monsterLevel)
        {
            int leveldifference = playerLevel - monsterLevel;
            float penalty;

            // penalty calculation
            switch (leveldifference)
            {
                case 6:
                    penalty = 0.9f;
                    break;

                case 7:
                    penalty = 0.7f;
                    break;

                case 8:
                    penalty = 0.5f;
                    break;

                case 9:
                    penalty = 0.3f;
                    break;

                default:
                    if (leveldifference > 9)
                    {
                        penalty = 0.1f;
                    }
                    else if (leveldifference > 18)
                    {
                        penalty = 0.05f;
                    }
                    else
                    {
                        penalty = 1f;
                    }
                    break;
            }

            return penalty;
        }

        public static float GoldPenalty(byte playerLevel, byte monsterLevel)
        {
            int leveldifference = playerLevel - monsterLevel;
            float penalty;

            // penalty calculation
            switch (leveldifference)
            {
                case 5:
                    penalty = 0.9f;
                    break;

                case 6:
                    penalty = 0.7f;
                    break;

                case 7:
                    penalty = 0.5f;
                    break;

                case 8:
                    penalty = 0.3f;
                    break;

                case 9:
                    penalty = 0.2f;
                    break;

                default:
                    if (leveldifference > 9 && leveldifference < 19)
                    {
                        penalty = 0.1f;
                    }
                    else if (leveldifference > 18 && leveldifference < 30)
                    {
                        penalty = 0.05f;
                    }
                    else if (leveldifference > 30)
                    {
                        penalty = 0f;
                    }
                    else
                    {
                        penalty = 1f;
                    }
                    break;
            }

            return penalty;
        }

        public static long LoadFairyXPData(long elementRate)
        {
            if (elementRate < 40)
            {
                return (elementRate * elementRate) + 50;
            }
            return (elementRate * elementRate * 3) + 50;
        }

        public static int LoadFamilyXPData(byte familyLevel)
        {
            switch (familyLevel)
            {
                case 1:
                    return 100000;

                case 2:
                    return 250000;

                case 3:
                    return 370000;

                case 4:
                    return 560000;

                case 5:
                    return 840000;

                case 6:
                    return 1260000;

                case 7:
                    return 1900000;

                case 8:
                    return 2850000;

                case 9:
                    return 3570000;

                case 10:
                    return 3830000;

                case 11:
                    return 4150000;

                case 12:
                    return 4750000;

                case 13:
                    return 5500000;

                case 14:
                    return 6500000;

                case 15:
                    return 7000000;

                case 16:
                    return 8500000;

                case 17:
                    return 9500000;

                case 18:
                    return 10000000;

                case 19:
                    return 17000000;

                default:
                    return 999999999;
            }
        }

        public static int MagicalDefence(ClassType @class, byte level)
        {
            if (_magicalDef == null)
            {
                new CharacterHelper();
            }
            return _magicalDef[(int)@class, level]; ;
        }

        public static int MaxDistance(ClassType @class, byte level)
        {
            if (_maxDist == null)
            {
                new CharacterHelper();
            }
            return _maxDist[(int)@class, level]; ;
        }

        public static int MaxHit(ClassType @class, byte level)
        {
            if (_maxHit == null)
            {
                new CharacterHelper();
            }
            return _maxHit[(int)@class, level]; ;
        }

        public static int MinDistance(ClassType @class, byte level)
        {
            if (_minDist == null)
            {
                new CharacterHelper();
            }
            return _minDist[(int)@class, level]; ;
        }

        public static int MinHit(ClassType @class, byte level)
        {
            if (_minHit == null)
            {
                new CharacterHelper();
            }
            return _minHit[(int)@class, level]; ;
        }

        public static int RarityPoint(short rarity, short lvl, bool armor)
        {
            int p;
            switch (rarity)
            {
                case 0:
                    p = 0;
                    break;

                case 1:
                    p = 1;
                    break;

                case 2:
                    p = 2;
                    break;

                case 3:
                    p = 3;
                    break;

                case 4:
                    p = 4;
                    break;

                case 5:
                    p = 5;
                    break;

                case 6:
                    p = 7;
                    break;

                case 7:
                    p = 10;
                    break;

                case 8:
                    p = 15;
                    break;

                default:
                    p = rarity * 2;
                    break;
            }
            return p * ((lvl / (armor ? 10 : 5)) + 1);
        }

        public static int SlPoint(short spPoint, short mode)
        {
            try
            {
                int point = 0;
                switch (mode)
                {
                    case 0:
                        if (spPoint <= 10)
                        {
                            point = spPoint;
                        }
                        else if (spPoint <= 28)
                        {
                            point = 10 + ((spPoint - 10) / 2);
                        }
                        else if (spPoint <= 88)
                        {
                            point = 19 + ((spPoint - 28) / 3);
                        }
                        else if (spPoint <= 168)
                        {
                            point = 39 + ((spPoint - 88) / 4);
                        }
                        else if (spPoint <= 268)
                        {
                            point = 59 + ((spPoint - 168) / 5);
                        }
                        else if (spPoint <= 334)
                        {
                            point = 79 + ((spPoint - 268) / 6);
                        }
                        else if (spPoint <= 383)
                        {
                            point = 90 + ((spPoint - 334) / 7);
                        }
                        else if (spPoint <= 391)
                        {
                            point = 97 + ((spPoint - 383) / 8);
                        }
                        else if (spPoint <= 400)
                        {
                            point = 98 + ((spPoint - 391) / 9);
                        }
                        else if (spPoint <= 410)
                        {
                            point = 99 + ((spPoint - 400) / 10);
                        }

                        break;

                    case 2:
                        if (spPoint <= 20)
                        {
                            point = spPoint;
                        }
                        else if (spPoint <= 40)
                        {
                            point = 20 + ((spPoint - 20) / 2);
                        }
                        else if (spPoint <= 70)
                        {
                            point = 30 + ((spPoint - 40) / 3);
                        }
                        else if (spPoint <= 110)
                        {
                            point = 40 + ((spPoint - 70) / 4);
                        }
                        else if (spPoint <= 210)
                        {
                            point = 50 + ((spPoint - 110) / 5);
                        }
                        else if (spPoint <= 270)
                        {
                            point = 70 + ((spPoint - 210) / 6);
                        }
                        else if (spPoint <= 410)
                        {
                            point = 80 + ((spPoint - 270) / 7);
                        }

                        break;

                    case 1:
                        if (spPoint <= 10)
                        {
                            point = spPoint;
                        }
                        else if (spPoint <= 48)
                        {
                            point = 10 + ((spPoint - 10) / 2);
                        }
                        else if (spPoint <= 81)
                        {
                            point = 29 + ((spPoint - 48) / 3);
                        }
                        else if (spPoint <= 161)
                        {
                            point = 40 + ((spPoint - 81) / 4);
                        }
                        else if (spPoint <= 236)
                        {
                            point = 60 + ((spPoint - 161) / 5);
                        }
                        else if (spPoint <= 290)
                        {
                            point = 75 + ((spPoint - 236) / 6);
                        }
                        else if (spPoint <= 360)
                        {
                            point = 84 + ((spPoint - 290) / 7);
                        }
                        else if (spPoint <= 400)
                        {
                            point = 97 + ((spPoint - 360) / 8);
                        }
                        else if (spPoint <= 410)
                        {
                            point = 99 + ((spPoint - 400) / 10);
                        }

                        break;

                    case 3:
                        if (spPoint <= 10)
                        {
                            point = spPoint;
                        }
                        else if (spPoint <= 50)
                        {
                            point = 10 + ((spPoint - 10) / 2);
                        }
                        else if (spPoint <= 110)
                        {
                            point = 30 + ((spPoint - 50) / 3);
                        }
                        else if (spPoint <= 150)
                        {
                            point = 50 + ((spPoint - 110) / 4);
                        }
                        else if (spPoint <= 200)
                        {
                            point = 60 + ((spPoint - 150) / 5);
                        }
                        else if (spPoint <= 260)
                        {
                            point = 70 + ((spPoint - 200) / 6);
                        }
                        else if (spPoint <= 330)
                        {
                            point = 80 + ((spPoint - 260) / 7);
                        }
                        else if (spPoint <= 410)
                        {
                            point = 90 + ((spPoint - 330) / 8);
                        }

                        break;
                }
                return point;
            }
            catch
            {
                return 0;
            }
        }

        public static int SPPoint(short spLevel, short upgrade)
        {
            int point = (spLevel - 20) * 3;
            if (spLevel <= 20)
            {
                point = 0;
            }
            switch (upgrade)
            {
                case 1:
                    point += 5;
                    break;

                case 2:
                    point += 10;
                    break;

                case 3:
                    point += 15;
                    break;

                case 4:
                    point += 20;
                    break;

                case 5:
                    point += 28;
                    break;

                case 6:
                    point += 36;
                    break;

                case 7:
                    point += 46;
                    break;

                case 8:
                    point += 56;
                    break;

                case 9:
                    point += 68;
                    break;

                case 10:
                    point += 80;
                    break;

                case 11:
                    point += 95;
                    break;

                case 12:
                    point += 110;
                    break;

                case 13:
                    point += 128;
                    break;

                case 14:
                    point += 148;
                    break;

                case 15:
                    point += 173;
                    break;
            }

            if (upgrade > 15)
            {
                point += 173 + (25 + (5 * (upgrade - 15)));
            }

            return point;
        }

        internal static int Defence(ClassType @class, byte level)
        {
            if (_hitDef == null)
            {
                new CharacterHelper();
            }
            return _hitDef[(int)@class, level]; ;
        }

        internal static int DefenceRate(ClassType @class, byte level)
        {
            if (_hitDodge == null)
            {
                new CharacterHelper();
            }
            return _hitDodge[(int)@class, level]; ;
        }

        internal static int DistanceDefence(ClassType @class, byte level)
        {
            if (_distDef == null)
            {
                new CharacterHelper();
            }
            return _distDef[(int)@class, level]; ;
        }

        internal static int DistanceDefenceRate(ClassType @class, byte level)
        {
            if (_distDodge == null)
            {
                new CharacterHelper();
            }
            return _distDodge[(int)@class, level]; ;
        }

        internal static int DistanceRate(ClassType @class, byte level)
        {
            if (_distRate == null)
            {
                new CharacterHelper();
            }
            return _distRate[(int)@class, level]; ;
        }

        internal static int DistCritical(ClassType @class, byte level)
        {
            if (_criticalDist == null)
            {
                new CharacterHelper();
            }
            return _criticalDist[(int)@class, level]; ;
        }

        internal static int DistCriticalRate(ClassType @class, byte level)
        {
            if (_criticalDistRate == null)
            {
                new CharacterHelper();
            }
            return _criticalDistRate[(int)@class, level]; ;
        }

        internal static int HitCritical(ClassType @class, byte level)
        {
            if (_criticalHit == null)
            {
                new CharacterHelper();
            }
            return _criticalHit[(int)@class, level]; ;
        }

        internal static int HitCriticalRate(ClassType @class, byte level)
        {
            if (_criticalHitRate == null)
            {
                new CharacterHelper();
            }
            return _criticalHitRate[(int)@class, level]; ;
        }

        internal static int HitRate(ClassType @class, byte level)
        {
            if (_hitRate == null)
            {
                new CharacterHelper();
            }
            return _hitRate[(int)@class, level]; ;
        }

        private static void loadHeroXpData()
        {
            // Load SpData
            _heroXpData = new double[256];
            _heroXpData[0] = 949560;
            for (int i = 1; i < _heroXpData.Length; i++)
            {
                _heroXpData[i] = Convert.ToInt64(_heroXpData[i - 1] * 1.08);
            }
        }

            private static void loadHPData()
        {
            _hp = new int[5, 256];

            // Adventurer HP
            for (int i = 1; i < _hp.GetLength(1); i++)
            {
                _hp[(int)ClassType.Adventurer, i] = (int)((1 / 2.0 * i * i) + (31 / 2.0 * i) + 205);
            }

            // Swordsman HP
            for (int i = 0; i < _hp.GetLength(1); i++)
            {
                int j = 16;
                int hp = 946;
                int inc = 85;
                while (j <= i)
                {
                    if (j % 5 == 2)
                    {
                        hp += inc / 2;
                        inc += 2;
                    }
                    else
                    {
                        hp += inc;
                        inc += 4;
                    }
                    ++j;
                }
                _hp[(int)ClassType.Swordsman, i] = hp;
            }

            // Magician HP
            for (int i = 0; i < _hp.GetLength(1); i++)
            {
                _hp[(int)ClassType.Magician, i] = (int)(((((i + 15) * (i + 15)) + i + 15.0) / 2.0) - 465 + 550);
            }

            // Archer HP
            for (int i = 0; i < _hp.GetLength(1); i++)
            {
                int hp = 680;
                int inc = 35;
                int j = 16;
                while (j <= i)
                {
                    hp += inc;
                    ++inc;
                    if (j % 10 == 1 || j % 10 == 5 || j % 10 == 8)
                    {
                        hp += inc;
                        ++inc;
                    }
                    ++j;
                }
                _hp[(int)ClassType.Archer, i] = hp;
            }

            // MARTIAL ARTIST HP
            for (int i = 0; i < _hp.GetLength(1); i++)
            {
                int hp = 586;
                int inc = 60;
                int j = 16;
                while (j <= i)
                {
                    hp += inc;
                    ++inc;
                    if (j % 10 == 1 || j % 10 == 5 || j % 10 == 8)
                    {
                        hp += inc;
                        ++inc;
                    }
                    ++j;
                }
                _hp[(int)ClassType.MartialArtist, i] = hp;
            }
        }

        private static void loadHPHealth()
        {
            _hpHealth = new int[5];
            _hpHealth[(int)ClassType.Archer] = 60;
            _hpHealth[(int)ClassType.Adventurer] = 30;
            _hpHealth[(int)ClassType.Swordsman] = 90;
            _hpHealth[(int)ClassType.Magician] = 30;
            _hpHealth[(int)ClassType.MartialArtist] = 60;
        }

        private static void loadHPHealthStand()
        {
            _hpHealthStand = new int[5];
            _hpHealthStand[(int)ClassType.Archer] = 32;
            _hpHealthStand[(int)ClassType.Adventurer] = 25;
            _hpHealthStand[(int)ClassType.Swordsman] = 26;
            _hpHealthStand[(int)ClassType.Magician] = 20;
            _hpHealthStand[(int)ClassType.MartialArtist] = 24;
        }

        private static void loadJobXPData()
        {
            // Load JobData
            _firstJobXpData = new double[21];
            _secondjobxpData = new double[256];
            _firstJobXpData[0] = 2200;
            _secondjobxpData[0] = 17600;
            for (int i = 1; i < _firstJobXpData.Length; i++)
            {
                _firstJobXpData[i] = _firstJobXpData[i - 1] + 700;
            }

            for (int i = 1; i < _secondjobxpData.Length; i++)
            {
                int var2 = 400;
                if (i > 3)
                {
                    var2 = 4500;
                }
                if (i > 40)
                {
                    var2 = 15000;
                }
                _secondjobxpData[i] = _secondjobxpData[i - 1] + var2;
            }
        }

        private static void loadMPData()
        {
            _mp = new int[5, 257];

            // ADVENTURER MP
            _mp[(int)ClassType.Adventurer, 0] = 60;
            int baseAdventurer = 9;
            for (int i = 1; i < _mp.GetLength(1); i += 4)
            {
                _mp[(int)ClassType.Adventurer, i] = _mp[(int)ClassType.Adventurer, i - 1] + baseAdventurer;
                _mp[(int)ClassType.Adventurer, i + 1] = _mp[(int)ClassType.Adventurer, i] + baseAdventurer;
                _mp[(int)ClassType.Adventurer, i + 2] = _mp[(int)ClassType.Adventurer, i + 1] + baseAdventurer;
                baseAdventurer++;
                _mp[(int)ClassType.Adventurer, i + 3] = _mp[(int)ClassType.Adventurer, i + 2] + baseAdventurer;
                baseAdventurer++;
            }

            // SWORDSMAN MP
            for (int i = 1; i < _mp.GetLength(1) - 1; i++)
            {
                _mp[(int)ClassType.Swordsman, i] = _mp[(int)ClassType.Adventurer, i];
            }

            // ARCHER MP
            for (int i = 0; i < _mp.GetLength(1) - 1; i++)
            {
                _mp[(int)ClassType.Archer, i] = _mp[(int)ClassType.Adventurer, i + 1];
            }

            // MAGICIAN MP
            for (int i = 0; i < _mp.GetLength(1) - 1; i++)
            {
                _mp[(int)ClassType.Magician, i] = 3 * _mp[(int)ClassType.Adventurer, i];
            }


            // MARTIAL ARTIST MP
            for (int i = 1; i < _mp.GetLength(1) - 1; i++)
            {
                _mp[(int)ClassType.MartialArtist, i] = (8 * 100 - 13) + _mp[(int)ClassType.Adventurer, i];
            }
        }

        private static void loadMPHealth()
        {
            _mpHealth = new int[5];
            _mpHealth[(int)ClassType.Adventurer] = 10;
            _mpHealth[(int)ClassType.Swordsman] = 30;
            _mpHealth[(int)ClassType.Archer] = 50;
            _mpHealth[(int)ClassType.Magician] = 80;
            _mpHealth[(int)ClassType.MartialArtist] = 40;
        }

        private static void loadMPHealthStand()
        {
            _mpHealthStand = new int[5];
            _mpHealthStand[(int)ClassType.Adventurer] = 5;
            _mpHealthStand[(int)ClassType.Swordsman] = 16;
            _mpHealthStand[(int)ClassType.Archer] = 28;
            _mpHealthStand[(int)ClassType.Magician] = 40;
            _mpHealthStand[(int)ClassType.MartialArtist] = 8;
        }

        private static void loadSpeedData()
        {
            _speedData = new byte[5];
            _speedData[(int)ClassType.Adventurer] = 11;
            _speedData[(int)ClassType.Swordsman] = 11;
            _speedData[(int)ClassType.Archer] = 12;
            _speedData[(int)ClassType.Magician] = 10;
            _speedData[(int)ClassType.MartialArtist] = 12;
        }

        private static void loadSPXPData()
        {
            // Load SpData
            _spxpData = new double[256];
            _spxpData[0] = 15000;
            _spxpData[19] = 218000;
            for (int i = 1; i < 19; i++)
            {
                _spxpData[i] = _spxpData[i - 1] + 10000;
            }
            for (int i = 20; i < _spxpData.Length; i++)
            {
                _spxpData[i] = _spxpData[i - 1] + (6 * ((3 * i * (i + 1)) + 1));
            }
        }

        // TODO: Improve with Official Source Code
        private static void loadStats()
        {
            _minHit = new int[5, 256];
            _maxHit = new int[5, 256];
            _hitRate = new int[5, 256];
            _criticalHitRate = new int[5, 256];
            _criticalHit = new int[5, 256];
            _minDist = new int[5, 256];
            _maxDist = new int[5, 256];
            _distRate = new int[5, 256];
            _criticalDistRate = new int[5, 256];
            _criticalDist = new int[5, 256];
            _hitDef = new int[5, 256];
            _hitDodge = new int[5, 256];
            _distDef = new int[5, 256];
            _distDodge = new int[5, 256];
            _magicalDef = new int[5, 256];

            for (int i = 0; i < 256; i++)
            {
                // ADVENTURER
                _minHit[(int)ClassType.Adventurer, i] = i + 9; // approx
                _maxHit[(int)ClassType.Adventurer, i] = i + 9; // approx
                _hitRate[(int)ClassType.Adventurer, i] = i + 9; // approx
                _criticalHitRate[(int)ClassType.Adventurer, i] = 0; // sure
                _criticalHit[(int)ClassType.Adventurer, i] = 0; // sure
                _minDist[(int)ClassType.Adventurer, i] = i + 9; // approx
                _maxDist[(int)ClassType.Adventurer, i] = i + 9; // approx
                _distRate[(int)ClassType.Adventurer, i] = (i + 9) * 2; // approx
                _criticalDistRate[(int)ClassType.Adventurer, i] = 0; // sure
                _criticalDist[(int)ClassType.Adventurer, i] = 0; // sure
                _hitDef[(int)ClassType.Adventurer, i] = i + (9 / 2); // approx
                _hitDodge[(int)ClassType.Adventurer, i] = i + 9; // approx
                _distDef[(int)ClassType.Adventurer, i] = (i + 9) / 2; // approx
                _distDodge[(int)ClassType.Adventurer, i] = i + 9; // approx
                _magicalDef[(int)ClassType.Adventurer, i] = (i + 9) / 2; // approx

                // SWORDMAN
                _criticalHitRate[(int)ClassType.Swordsman, i] = 0; // approx
                _criticalHit[(int)ClassType.Swordsman, i] = 0; // approx
                _criticalDist[(int)ClassType.Swordsman, i] = 0; // approx
                _criticalDistRate[(int)ClassType.Swordsman, i] = 0; // approx
                _minDist[(int)ClassType.Swordsman, i] = i + 12; // approx
                _maxDist[(int)ClassType.Swordsman, i] = i + 12; // approx
                _distRate[(int)ClassType.Swordsman, i] = 2 * (i + 12); // approx
                _hitDodge[(int)ClassType.Swordsman, i] = i + 12; // approx
                _distDodge[(int)ClassType.Swordsman, i] = i + 12; // approx
                _magicalDef[(int)ClassType.Swordsman, i] = (i + 9) / 2; // approx
                _hitRate[(int)ClassType.Swordsman, i] = i + 27; // approx
                _hitDef[(int)ClassType.Swordsman, i] = i + 2; // approx

                _minHit[(int)ClassType.Swordsman, i] = (2 * i) + 5; // approx Numbers n such that 10n+9 is prime.
                _maxHit[(int)ClassType.Swordsman, i] = (2 * i) + 5; // approx Numbers n such that 10n+9 is prime.
                _distDef[(int)ClassType.Swordsman, i] = i; // approx

                // MAGICIAN
                _hitRate[(int)ClassType.Magician, i] = 0; // sure
                _criticalHitRate[(int)ClassType.Magician, i] = 0; // sure
                _criticalHit[(int)ClassType.Magician, i] = 0; // sure
                _criticalDistRate[(int)ClassType.Magician, i] = 0; // sure
                _criticalDist[(int)ClassType.Magician, i] = 0; // sure

                _minDist[(int)ClassType.Magician, i] = 14 + i; // approx
                _maxDist[(int)ClassType.Magician, i] = 14 + i; // approx
                _distRate[(int)ClassType.Magician, i] = (14 + i) * 2; // approx
                _hitDef[(int)ClassType.Magician, i] = (i + 11) / 2; // approx
                _magicalDef[(int)ClassType.Magician, i] = i + 4; // approx
                _hitDodge[(int)ClassType.Magician, i] = 24 + i; // approx
                _distDodge[(int)ClassType.Magician, i] = 14 + i; // approx

                _minHit[(int)ClassType.Magician, i] = (2 * i) + 9; // approx Numbers n such that n^2 is of form x^ 2 + 40y ^ 2 with positive x,y.
                _maxHit[(int)ClassType.Magician, i] = (2 * i) + 9; // approx Numbers n such that n^2 is of form x^2+40y^2 with positive x,y.
                _distDef[(int)ClassType.Magician, i] = 20 + i; // approx

                // ARCHER
                _criticalHitRate[(int)ClassType.Archer, i] = 0; // sure
                _criticalHit[(int)ClassType.Archer, i] = 0; // sure
                _criticalDistRate[(int)ClassType.Archer, i] = 0; // sure
                _criticalDist[(int)ClassType.Archer, i] = 0; // sure

                _minHit[(int)ClassType.Archer, i] = 9 + (i * 3); // approx
                _maxHit[(int)ClassType.Archer, i] = 9 + (i * 3); // approx
                int add = i % 2 == 0 ? 2 : 4;
                _hitRate[(int)ClassType.Archer, 1] = 41;
                _hitRate[(int)ClassType.Archer, i] += add; // approx
                _minDist[(int)ClassType.Archer, i] = 2 * i; // approx
                _maxDist[(int)ClassType.Archer, i] = 2 * i; // approx

                _distRate[(int)ClassType.Archer, i] = 20 + (2 * i); // approx
                _hitDef[(int)ClassType.Archer, i] = i; // approx
                _magicalDef[(int)ClassType.Archer, i] = i + 2; // approx
                _hitDodge[(int)ClassType.Archer, i] = 41 + i; // approx
                _distDodge[(int)ClassType.Archer, i] = i + 2; // approx
                _distDef[(int)ClassType.Archer, i] = i; // approx


                // MARTIAL ARTIST
                _criticalHitRate[(int)ClassType.MartialArtist, i] = 0; // sure
                _criticalHit[(int)ClassType.MartialArtist, i] = 0; // sure
                _criticalDist[(int)ClassType.MartialArtist, i] = 0; // sure
                _criticalDistRate[(int)ClassType.MartialArtist, i] = 0; // sure
                _minDist[(int)ClassType.MartialArtist, i] = i + 53; // sure
                _maxDist[(int)ClassType.MartialArtist, i] = i + 53; // sure
                _distRate[(int)ClassType.MartialArtist, i] = 2 * (i + 33); // sure
                _hitDodge[(int)ClassType.MartialArtist, i] = i + 53; // sure
                _distDodge[(int)ClassType.MartialArtist, i] = i + 43; // sure
                _magicalDef[(int)ClassType.MartialArtist, i] = 53; // sure
                _hitRate[(int)ClassType.MartialArtist, i] = i + 33; // sure
                _hitDef[(int)ClassType.MartialArtist, i] = i - 16; // sure

                _minHit[(int)ClassType.MartialArtist, i] = i + 49; // sure
                _maxHit[(int)ClassType.MartialArtist, i] = i + 49; // sure
                _distDef[(int)ClassType.MartialArtist, i] = i - 14; // sure

            }
        }

        private static void loadXPData()
        {
            // Load XpData
            _xpData = new double[256];
            double[] v = new double[256];
            double variable = 1;
            v[0] = 540;
            v[1] = 960;
            _xpData[0] = 300;
            for (int i = 2; i < v.Length; i++)
            {
                v[i] = v[i - 1] + 420 + (120 * (i - 1));
            }
            for (int i = 1; i < _xpData.Length; i++)
            {
                if (i < 79)
                {
                    switch (i)
                    {
                        case 14:
                            variable = 6 / 3d;
                            break;

                        case 39:
                            variable = 19 / 3d;
                            break;

                        case 59:
                            variable = 70 / 3d;
                            break;
                    }

                    _xpData[i] = Convert.ToInt64(_xpData[i - 1] + (variable * v[i - 1]));
                }
                if (i >= 79)
                {
                    switch (i)
                    {
                        case 79:
                            variable = 5000;
                            break;

                        case 82:
                            variable = 9000;
                            break;

                        case 84:
                            variable = 13000;
                            break;
                    }

                    _xpData[i] = Convert.ToInt64(_xpData[i - 1] + (variable * (i + 2) * (i + 2)));
                }

                // Console.WriteLine($"LvL {i}: xpdata: {_xpData[i - 1]} v: {v[i - 1]}");
            }
        }

        public static short AuthorityColor(AuthorityType authority)
        {
            switch (authority)
            {
                case AuthorityType.GameSupport:
                    return 50;
                case AuthorityType.TrialModerator:
                case AuthorityType.Moderator:
                case AuthorityType.SuperModerator:
                case AuthorityType.BoardAdmin:
                case AuthorityType.TrialGameMaster:
                case AuthorityType.GameMaster:
                case AuthorityType.SuperGameMaster:
                case AuthorityType.GameAdmin:
                case AuthorityType.TeamManager:
                case AuthorityType.CommunityManager:
                case AuthorityType.Developper:
                case AuthorityType.Administrator:
                    return 500;
                default:
                    return 50;
            }
        }

        public static byte AuthorityChatColor(AuthorityType authority)
        {
            switch (authority)
            {
                case AuthorityType.GameSupport:
                    return 12;
                case AuthorityType.TrialModerator:
                case AuthorityType.Moderator:
                case AuthorityType.SuperModerator:
                case AuthorityType.BoardAdmin:
                case AuthorityType.TrialGameMaster:
                case AuthorityType.GameMaster:
                case AuthorityType.SuperGameMaster:
                case AuthorityType.GameAdmin:
                case AuthorityType.TeamManager:
                case AuthorityType.CommunityManager:
                case AuthorityType.Developper:
                case AuthorityType.Administrator:
                    return 15;
                case AuthorityType.CoOwner:
                case AuthorityType.Owner:
                    return 16;
                default:
                    return 0;
            }
        }
        #endregion
    }
}