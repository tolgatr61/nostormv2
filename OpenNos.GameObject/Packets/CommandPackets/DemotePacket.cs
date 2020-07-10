﻿////<auto-generated <- Codemaid exclusion for now (PacketIndex Order is important for maintenance)

using OpenNos.Core;
using OpenNos.Domain;

namespace OpenNos.GameObject.CommandPackets
{
    [PacketHeader("$Demote", PassNonParseablePacket = true, Authorities = new AuthorityType[]{ AuthorityType.TeamManager } )]
    public class DemotePacket : PacketDefinition
    {
        #region Properties

        [PacketIndex(0)]
        public string CharacterName { get; set; }

        public static string ReturnHelp() => "$Demote <Nickname>";

        #endregion
    }
}