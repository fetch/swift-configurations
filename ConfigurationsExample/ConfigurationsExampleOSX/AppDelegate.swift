//
//  AppDelegate.swift
//  ConfigurationsExampleOSX
//
//  Created by Koen Punt on 16/02/16.
//  Copyright © 2016 Fetch! B.V. All rights reserved.
//

import Cocoa
import Configurations

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    @IBOutlet weak var greetingLabel: NSTextField!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        let configuration = Configuration.default

        self.greetingLabel.stringValue = configuration["Greeting"]!
    }

    func applicationWillTerminate(_ aNotification: Notification) {
    }


}

