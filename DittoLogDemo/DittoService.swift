///
//  DittoService.swift
//  DittoLogDemo
//
//  Created by Eric Turner on 5/22/23.
//
//  Copyright © 2023 DittoLive Incorporated. All rights reserved.

import Combine
import DittoSwift

let LOGGING_ENABLED: Bool = true

class DittoService {
    static var shared = DittoService()
    let ditto: Ditto

    init() {
        ditto = Ditto(
            identity: .onlinePlayground(
                appID: Env.DITTO_APP_ID,
                token: Env.DITTO_PLAYGROUND_TOKEN
            )
        )

        if LOGGING_ENABLED {
            // Make sure log level is set _before_ starting ditto.
            // .debug level is preferred; only set level .verbose if instructed by Ditto support.
            DittoLogger.minimumLogLevel = .debug
            if let logFileURL = LogManager.shared.logFileURL {
                DittoLogger.setLogFileURL(logFileURL)
            }
        }
        
        do {
            try ditto.startSync()
        } catch {
            // handle error
        }
    }
}
