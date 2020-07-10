﻿////<auto-generated <- Codemaid exclusion for now (PacketIndex Order is important for maintenance)

using OpenNos.Core;
using OpenNos.Domain;

namespace OpenNos.GameObject.CommandPackets
{
    [PacketHeader("$PenaltyLog", PassNonParseablePacket = true, Authorities = new AuthorityType[]{ AuthorityType.GameMaster } )]
    public class PenaltyLogPacket : PacketDefinition
    {
        #region Properties

        [PacketIndex(0)]
        public string CharacterName { get; set; }

        public static string ReturnHelp() => "$PenaltyLog <Nickname>";

        #endregion
    }
}