//
//  EntryPoint.swift
//
//

import Foundation
import Sentry

public class EntryPoint {
    public static let shared = EntryPoint()
    
    private init() {
        initialiseSentry()
    }
    
    private func initialiseSentry() {
        SentrySDK.start { options in
            options.dsn = "https://b4d350a5e57388a6829d81d4f35b755c@o434252.ingest.sentry.io/4505788709994496"
            options.debug = false
            options.tracesSampleRate = 1.0
        }
    }
}

