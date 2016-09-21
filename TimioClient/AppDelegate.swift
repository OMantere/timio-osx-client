//
//  AppDelegate.swift
//  TimioClient
//
//  Created by Oskari Mantere on 10/09/16.
//  Copyright © 2016 Oskari Mantere. All rights reserved.
//

import Cocoa
import ServiceManagement

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    func addHelperToLoginItems() {
        let appBundleIdentifier = "timio.TimioClient-Helper"
        if SMLoginItemSetEnabled(appBundleIdentifier as CFString, true) {
            NSLog("Added login item successfully.")
        } else {
            NSLog("Failed to add login item.")
        }
    }

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        addHelperToLoginItems()
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }
}

