﻿////<auto-generated <- Codemaid exclusion for now (PacketIndex Order is important for maintenance)

using OpenNos.Core;
using OpenNos.Domain;

namespace OpenNos.GameObject.CommandPackets
{
    [PacketHeader("$DisableNpc", PassNonParseablePacket = true, Authorities = new AuthorityType[] { AuthorityType.GameAdmin, AuthorityType.Administrator })]
    public class DisableNpcPacket : PacketDefinition
    {
        public static string ReturnHelp() => "$DisableNpc";
    }
}