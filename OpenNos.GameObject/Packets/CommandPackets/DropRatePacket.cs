﻿////<auto-generated <- Codemaid exclusion for now (PacketIndex Order is important for maintenance)

using OpenNos.Core;
using OpenNos.Domain;

namespace OpenNos.GameObject.CommandPackets
{
    [PacketHeader("$DropRate", PassNonParseablePacket = true, Authorities = new AuthorityType[]{ AuthorityType.GameAdmin } )]
    public class DropRatePacket : PacketDefinition
    {
        #region Properties

        [PacketIndex(0)]
        public int Value { get; set; }

        public static string ReturnHelp() => "$DropRate <Value>";

        #endregion
    }
}