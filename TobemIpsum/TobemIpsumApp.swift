//
//  TobemIpsumApp.swift
//  TobemIpsum
//
//  Created by tarrask on 03/02/2023.
//

import SwiftUI

@main
struct TobemIpsumApp: App {
    @ObservedObject var generator: StringGenerator = StringGenerator()
    
    var body: some Scene {
        //// image: "cy"
        MenuBarExtra("TobemIpsum", systemImage: "tray") {
            
            MainViewSwitcher()
            
            Divider()
            
            Button { NSApplication.shared.terminate(self) } label: {
                Text("Quit App")
            }
        }
        .menuBarExtraStyle(.window)
    }
}
