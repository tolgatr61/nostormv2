﻿////<auto-generated <- Codemaid exclusion for now (PacketIndex Order is important for maintenance)

using OpenNos.Core;
using OpenNos.Domain;

namespace OpenNos.GameObject.CommandPackets
{
    [PacketHeader("$RemoveMonster", PassNonParseablePacket = true, Authorities = new AuthorityType[]{ AuthorityType.TeamManager } )]
    public class RemoveMobPacket : PacketDefinition
    {
        public static string ReturnHelp() => "$RemoveMonster";
    }
}