﻿////<auto-generated <- Codemaid exclusion for now (PacketIndex Order is important for maintenance)

using OpenNos.Core;

namespace OpenNos.GameObject.Packets.ServerPackets
{
    [PacketHeader("mvi")]
    public class MviPacket : PacketDefinition
    {
        #region Properties

        [PacketIndex(0)]
        public byte InventoryId { get; set; }

        [PacketIndex(1)]
        public byte SlotId { get; set; }

        [PacketIndex(2)]
        public long ItemId { get; set; }

        [PacketIndex(3)]
        public byte NewSlotId { get; set; }

        #endregion
    }
}
