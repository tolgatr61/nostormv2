﻿/*
 * This file is part of the OpenNos Emulator Project. See AUTHORS file for Copyright information
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 */

using System;

namespace OpenNos.Core.Networking.Communication.ScsServices.Service
{
    /// <summary>
    /// Stores service client informations to be used by an event.
    /// </summary>
    public class ServiceClientEventArgs : EventArgs
    {
        #region Instantiation

        /// <summary>
        /// Creates a new ServiceClientEventArgs object.
        /// </summary>
        /// <param name="client">Client that is associated with this event</param>
        public ServiceClientEventArgs(IScsServiceClient client) => Client = client;

        #endregion

        #region Properties

        /// <summary>
        /// Client that is associated with this event.
        /// </summary>
        public IScsServiceClient Client { get; }

        #endregion
    }
}