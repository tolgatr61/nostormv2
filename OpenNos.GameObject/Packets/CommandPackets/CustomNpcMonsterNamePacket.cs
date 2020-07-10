﻿////<auto-generated <- Codemaid exclusion for now (PacketIndex Order is important for maintenance)

using OpenNos.Core;
using OpenNos.Domain;

namespace OpenNos.GameObject.CommandPackets
{
    [PacketHeader("$NpcName", PassNonParseablePacket = true, Authorities = new AuthorityType[] { AuthorityType.GameAdmin })]
    public class ChangeNpcMonsterNamePacket : PacketDefinition
    {
        #region Properties

        [PacketIndex(0)]
        public string Name { get; set; }

        public static string ReturnHelp() => "$NpcName <Value>";

        #endregion
    }
}