//
//  MainWindowController.swift
//  Letters2
//
//  Created by Shimokochi Katsunori on 2018/12/10.
//  Copyright © 2018 Shimokochi Shoma. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {

    override func windowDidLoad() {
        super.windowDidLoad()
    
        // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
    }
    
    var subview: MainWindowController?
    
    @IBAction override func newWindowForTab(_ sender: Any?) { // タブ対応
        
        let story = self.storyboard
        let windowVC: MainWindowController = story?.instantiateInitialController() as! MainWindowController
        
        self.window?.addTabbedWindow(windowVC.window!, ordered: .above)
        self.subview = windowVC
        
        windowVC.window?.orderFront(self.window)
        windowVC.window?.makeKey()
    }

}
