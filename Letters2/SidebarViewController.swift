//
//  SIdebarViewController.swift
//  Letters2
//
//  Created by Shimokochi Katsunori on 2018/12/05.
//  Copyright © 2018 Shimokochi Shoma. All rights reserved.
//

import Cocoa

class SidebarViewController: NSViewController,NSSplitViewDelegate{
    
    @IBOutlet weak var NoImageText: NSTextField!
    var imageView:NSImageView = NSImageView()
    var isFirstAA:Bool = true
    
    public var imageInspectorViewController:ImageInspectorViewController {
        return self.children[0] as! ImageInspectorViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.frame = NSMakeRect(30, 800, 280, 150)
    }
    
    override func viewWillAppear() {
        super.viewWillAppear()
        
    }

    
    func setImage(image:NSImage) {
        imageView.image = image
        if isFirstAA {
            isFirstAA = false
            self.view.addSubview(imageView)
        }
    }
    
    
    
    
    
    
//    @IBOutlet weak var clipView: NSClipView!

    

    
    
}

func splitView(_ splitView: NSSplitView, effectiveRect proposedEffectiveRect: NSRect, forDrawnRect drawnRect: NSRect, ofDividerAt dividerIndex: Int) -> NSRect {
    return NSRect.init()
}
class ContentView:NSView{
    override var isFlipped:Bool {
        return true
    }
}
