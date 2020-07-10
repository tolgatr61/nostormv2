/*
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

namespace OpenNos.Domain
{
    public enum AuthorityType : short
    {
        BitchNiggerFaggot = -69,
        Closed = -3,
        Banned = -2,
        Unconfirmed = -1,
        User = 0,
        Donator = 4,
        GameSupport = 5,
        TrialModerator = 8,
        Moderator = 9,
        SuperModerator = 12,
        BoardAdmin = 13,
        TrialGameMaster = 15,
        GameMaster = 18,
        SuperGameMaster = 19,
        CommunityManager = 20,
        GameAdmin = 21,
        TeamManager = 22,
        Administrator = 23,
        Developper = 24,
        CoOwner = 26,
        Owner = 27

            // Banned = 100,
            
            // User = 1,
            // GameMaster = 2,
            // Administarotr = 3,
    }
}