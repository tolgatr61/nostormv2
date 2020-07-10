using System.Collections.Generic;
using OpenNos.Core;
using OpenNos.Domain;
using OpenNos.GameObject.Packets.ServerPackets;

namespace OpenNos.GameObject
{
    [PacketHeader("title")]
    public class TitlePacket : PacketDefinition
    {
      //  public List<TitleSubPacket> Data { get; internal set; }
    }
}