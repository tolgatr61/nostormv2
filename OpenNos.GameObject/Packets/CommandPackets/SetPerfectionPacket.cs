﻿////<auto-generated <- Codemaid exclusion for now (PacketIndex Order is important for maintenance)

using OpenNos.Core;
using OpenNos.Domain;

namespace OpenNos.GameObject.CommandPackets
{
    [PacketHeader("$Perfection", PassNonParseablePacket = true, Authorities = new AuthorityType[]{ AuthorityType.GameAdmin } )]
    public class SetPerfectionPacket : PacketDefinition
    {
        #region Properties

        [PacketIndex(0)]
        public short Slot { get; set; }

        [PacketIndex(1)]
        public byte Type { get; set; }

        [PacketIndex(2)]
        public byte Value { get; set; }

        public static string ReturnHelp() => "$Perfection <Slot> <Type> <Value>";

        #endregion
    }
}
