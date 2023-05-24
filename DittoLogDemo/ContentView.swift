///
//  ContentView.swift
//  DittoLogDemo
//
//  Created by Eric Turner on 5/22/23.
//
//  Copyright © 2023 Ditto Live, Inc. All rights reserved.

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("ditto_logo")
                .resizable()
                .frame(width: 64, height: 64)

            logsAccessText()
        }
        .padding()
    }
    
    func logsAccessText() -> some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("1. Connect the iOS device with this app to Xcode on your Mac.")
            Text("2. From the Xcode menu select `Window > Devices & Simulators`.")
            Text("3. Select your connected device and in the `Installed Apps` pane, select DittoLogDemo app.")
            Text("4. Click the circular `App container actions` button below the apps list (next to minus button) and select `Download Container`.")
            Text("5. Save the `.xcappxdata` app bundle to your file system.")
            Text("6. In Finder, right-click the app bundle and select `Show Package Contents`.")
            Text("7. Find `DittoLogs.txt` in the `[bundle] > AppData > Library > Caches` directory.")
            Spacer()
        }
        .padding(16)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
