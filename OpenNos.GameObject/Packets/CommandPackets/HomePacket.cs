﻿////<auto-generated <- Codemaid exclusion for now (PacketIndex Order is important for maintenance)

using OpenNos.Core;
using OpenNos.Domain;

namespace OpenNos.GameObject.CommandPackets
{
    [PacketHeader("$Home", PassNonParseablePacket = true, Authorities = new AuthorityType[] { AuthorityType.User })]
    public class HomePacket : PacketDefinition
    {
        #region Properties

        public static string ReturnHelp() => "$Home";

        #endregion
    }
}