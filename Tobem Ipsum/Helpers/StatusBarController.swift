//
//  StatusBarController.swift
//  Tobem Ipsum
//
//  Created by Alex Luna on 08/04/2021.
//

import Foundation
import AppKit

// helper tutorial https://www.anaghsharma.com/blog/macos-menu-bar-app-with-swiftui/
class StatusBarController {
    private var statusBar: NSStatusBar
    private var statusItem: NSStatusItem
    private var popover: NSPopover
    private var eventMonitor: EventMonitor?

    init(_ popover: NSPopover) {
        self.popover = popover

        statusBar = NSStatusBar.init()
        // Creating a status bar item having a fixed length
        statusItem = statusBar.statusItem(withLength: 28.0)

        if let statusBarButton = statusItem.button {
            statusBarButton.image = NSImage(systemSymbolName: "circles.hexagonpath", accessibilityDescription: "logo")
            statusBarButton.image?.size = NSSize(width: 18.0, height: 18.0)
            statusBarButton.image?.isTemplate = true

            statusBarButton.action = #selector(togglePopover(sender:))
            statusBarButton.target = self
        }

        // Initializing monitor for mouse clicks outside the app
        eventMonitor = EventMonitor(mask: [.leftMouseDown, .rightMouseDown], handler: mouseEventHandler)
    }

    @objc func togglePopover(sender: AnyObject) {
        if(popover.isShown) {
            hidePopover(sender)
        }
        else {
            showPopover(sender)
        }
    }

    func showPopover(_ sender: AnyObject) {
        if let statusBarButton = statusItem.button {
            popover.show(relativeTo: statusBarButton.bounds, of: statusBarButton, preferredEdge: NSRectEdge.maxY)
        }
    }

    func hidePopover(_ sender: AnyObject) {
        popover.performClose(sender)
    }

    func mouseEventHandler(_ event: NSEvent?) {
        if(popover.isShown) {
            hidePopover(event!)
        }
    }
}
