//
// Copyright 2025 Element Creations Ltd.
// Copyright 2025 New Vector Ltd.
//
// SPDX-License-Identifier: AGPL-3.0-only OR LicenseRef-Element-Commercial.
// Please see LICENSE files in the repository root for full details.
//

import Foundation
import MatrixRustSDK

protocol RemoteSettingsHookProtocol {
    #if IS_MAIN_APP
    @MainActor func initializeCache(using client: ClientProtocol, applyingTo appSettings: CommonSettingsProtocol) async
    func updateCache(using client: ClientProtocol) async
    @MainActor func reset(_ appSettings: CommonSettingsProtocol)
    #endif
    @MainActor func loadCache(forHomeserver homeserver: String, applyingTo appSettings: CommonSettingsProtocol)
}

struct DefaultRemoteSettingsHook: RemoteSettingsHookProtocol {
    #if IS_MAIN_APP
    func initializeCache(using client: ClientProtocol, applyingTo appSettings: CommonSettingsProtocol) async { }
    
    func updateCache(using client: ClientProtocol) async { }
    func reset(_ appSettings: any CommonSettingsProtocol) { }
    #endif
    
    func loadCache(forHomeserver homeserver: String, applyingTo appSettings: CommonSettingsProtocol) { }
}
