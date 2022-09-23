//
//  Tobem_IpsumApp.swift
//  Tobem Ipsum
//
//  Created by Alex Luna on 08/04/2021.
//

import SwiftUI

@main
struct TobemIpsumApp: App {
    // swiftlint:disable weak_delegate
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        Group {
            WindowGroup {
                MainViewSwitcher()
            }
            
            // TO DO: Implement MenuBarExtra and make this app for OS 13 only
            // https://sarunw.com/posts/swiftui-menu-bar-app/#add-a-menu-bar-extra
        }
    }
}
