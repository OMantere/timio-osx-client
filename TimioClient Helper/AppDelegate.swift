//
//  AppDelegate.swift
//  TimioClient Helper
//
//  Created by Oskari Mantere on 20/09/16.
//  Copyright © 2016 Oskari Mantere. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
    func launchMainApplication() {
        NSArray *pathComponents = [[[NSBundle mainBundle] bundlePath] pathComponents];
        pathComponents = [pathComponents subarrayWithRange:NSMakeRange(0, [pathComponents count] - 4)];
        NSString *path = [NSString pathWithComponents:pathComponents];
        [[NSWorkspace sharedWorkspace] launchApplication:path];
    }
    

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        if(!KeyChainInterface.readToken) {
            launchMainApplication()
        }
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

