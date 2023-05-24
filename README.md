# DittoLogDemo  

## Overview  
This demo includes code you can drop into your iOS Ditto app to enable logging, then access the log files from your device app bundle. The code features automatic log rotation and convenient log file zipping.  

The small code footprint is an alternative to the richer-featured [DittoSwiftTools](https://github.com/getditto/DittoSwiftTools) 
which offers a number of Ditto app tools in a single package, including exporting log files right from the UI.  


## Setup and Run
1. Clone this repo to a location on your machine, and open in Xcode.    
2. Navigate to the project `Signing & Capabilities` tab and modify the `Team and Bundle Identifier` settings to your Apple developer account credentials to provision building to your device.  
3. In your [Ditto portal](https://portal.ditto.live), create an app to generate an App ID and 
playground token.   
4. In Terminal, run `cp .env.template .env` at the Xcode project root directory.   
5. Edit `.env` to add environment variables from the portal as in the following example:   
```DITTO_APP_ID=a01b2c34-5d6e-7fgh-ijkl-8mno9p0q12r3``` 
```DITTO_PLAYGROUND_TOKEN=a01b2c34-5d6e-7fgh-ijkl-8mno9p0q12r3```.  
6. Clean (**Command + Shift + K**), then build (**Command + B**). This will generate `Env.swift`.  
7. Build to iOS device and observe Ditto logging in the console.    

## Access Device Logs
1. Connect the iOS device with this app to Xcode on your Mac.  
2. From the Xcode menu select `Window > Devices & Simulators`.  
3. Select your connected device and in the `Installed Apps` pane, select DittoLogDemo app.  
4. Click the circular `App container actions` button below the apps list (next to minus button) and select `Download Container`.  
5. Save the `.xcappdata` app bundle to your file system.  
6. In Finder, right-click the app bundle and select `Show Package Contents`.  
7. Find `DittoLogs.txt` in the `[bundle] > AppData > Library > Caches` directory.  




