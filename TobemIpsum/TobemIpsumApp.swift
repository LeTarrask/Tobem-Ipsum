//
//  TobemIpsumApp.swift
//  TobemIpsum
//
//  Created by tarrask on 03/02/2023.
//

import SwiftUI

@main
struct TobemIpsumApp: App {
    @State var icon: String = "🤯"
    
    var body: some Scene {
        
        MenuBarExtra(icon, systemImage: "tray"){
            Button("GPT Query"){
                
            }
        }
    }
}
