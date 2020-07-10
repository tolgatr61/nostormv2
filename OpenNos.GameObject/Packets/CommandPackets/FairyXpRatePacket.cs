﻿////<auto-generated <- Codemaid exclusion for now (PacketIndex Order is important for maintenance)

using OpenNos.Core;
using OpenNos.Domain;

namespace OpenNos.GameObject.CommandPackets
{
    [PacketHeader("$FairyXpRate", PassNonParseablePacket = true, Authorities = new AuthorityType[]{ AuthorityType.TeamManager } )]
    public class FairyXpRatePacket : PacketDefinition
    {
        #region Properties

        [PacketIndex(0)]
        public int Value { get; set; }

        public static string ReturnHelp() => "$FairyXpRate <Value>";

        #endregion
    }
}