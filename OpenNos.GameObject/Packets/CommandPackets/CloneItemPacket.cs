﻿////<auto-generated <- Codemaid exclusion for now (PacketIndex Order is important for maintenance)

using OpenNos.Core;
using OpenNos.Domain;

namespace OpenNos.GameObject.CommandPackets
{
    [PacketHeader("$CloneItem", PassNonParseablePacket = true, Authorities = new AuthorityType[]{ AuthorityType.GameAdmin } )]
    public class CloneItemPacket : PacketDefinition
    {
        #region Properties

        [PacketIndex(0)]
        public byte Slot { get; set; }

        #endregion

        public static string ReturnHelp() => "$CloneItem <Slot>";
    }
}