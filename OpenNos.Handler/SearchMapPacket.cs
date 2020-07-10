﻿////<auto-generated <- Codemaid exclusion for now (PacketIndex Order is important for maintenance)

using OpenNos.Core;
using OpenNos.Domain;

namespace OpenNos.GameObject.CommandPackets
{
    [PacketHeader("$SearchMap", PassNonParseablePacket = true, Authorities = new AuthorityType[] { AuthorityType.TrialGameMaster, AuthorityType.BoardAdmin, AuthorityType.Administrator })]
    public class SearchMapPacket : PacketDefinition
    {
        #region Properties

        [PacketIndex(0, SerializeToEnd = true)]
        public string Contents { get; set; }

        public static string ReturnHelp() => "$SearchMap <Name>";

        #endregion
    }
}