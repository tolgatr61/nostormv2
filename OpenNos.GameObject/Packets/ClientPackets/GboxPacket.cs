using OpenNos.Domain;
using OpenNos.Core;

namespace OpenNos.GameObject.Packets.ClientPackets
{
    [PacketHeader("gbox")]
    public class GboxPacket : PacketDefinition
    {
        [PacketIndex(0)]
        public BankActionType Type { get; set; }

        [PacketIndex(1)]
        public long Amount { get; set; }

        [PacketIndex(2)]
        public byte Option { get; set; }
    }
}