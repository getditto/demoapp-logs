///
//  DittoLogDemoApp.swift
//  DittoLogDemo
//
//  Created by Eric Turner on 5/22/23.
//
//  Copyright © 2023 Ditto Live, Inc. All rights reserved.

import SwiftUI

@main
struct DittoLogDemoApp: App {
    // Initialize a DittoService instance to start logging at launch
    private let dittoService = DittoService()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
