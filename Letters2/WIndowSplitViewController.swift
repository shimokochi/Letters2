//
//  WIndowSplitViewController.swift
//  Letters2
//
//  Created by Shimokochi Katsunori on 2018/12/07.
//  Copyright © 2018 Shimokochi Shoma. All rights reserved.
//

import Cocoa

class WindowSplitViewController: NSSplitViewController,AAAreaViewControllerDelegate{
    
    
    @IBOutlet weak var AAArea: NSSplitViewItem!
    @IBOutlet weak var sidebar: NSSplitViewItem!
    
    var sidebarViewController:SidebarViewController {
        return sidebar.viewController as! SidebarViewController
    }
    
    var imageInspectorViewController:ImageInspectorViewController {
        return sidebarViewController.children[0] as! ImageInspectorViewController
    }
    
    var AAAreaViewController:AAAreaViewController {
        return AAArea.viewController as! AAAreaViewController
    }
    var propertyModel = AAPropertyModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    
    override func viewWillAppear() {
        super.viewWillAppear()
        self.propertyModel.background = NSColor.systemBlue
        self.imageInspectorViewController.propertyModel = self.propertyModel
        self.AAAreaViewController.propertyModel = self.propertyModel
        self.AAAreaViewController.propertyModel.delegate = self.AAAreaViewController
        self.AAAreaViewController.delegate = self
        self.imageInspectorViewController.nextResponder? = self.AAAreaViewController
    }
    
    override func splitView(_ splitView: NSSplitView, effectiveRect proposedEffectiveRect: NSRect, forDrawnRect drawnRect: NSRect, ofDividerAt dividerIndex: Int) -> NSRect {
        return NSRect.init() // カーソルを非表示
        
    }
    
    func finishCreateAA() {
        self.sidebarViewController.setImage(image:(self.propertyModel.image)!)
    }
    
}




