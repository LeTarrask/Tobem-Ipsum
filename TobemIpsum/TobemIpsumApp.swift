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
        MenuBarExtra("TobemIpsum", systemImage: "circle.hexagonpath") {
            
            MainViewSwitcher()
            
            Divider()
            
            Button { NSApplication.shared.terminate(self) } label: {
                Text("Quit App")
            }
            .padding()
        }
        .menuBarExtraStyle(.window)
    }
}
