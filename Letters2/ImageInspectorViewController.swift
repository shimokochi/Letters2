//
//  ImageInspectorViewController.swift
//  Letters2
//
//  Created by Shimokochi Katsunori on 2018/12/07.
//  Copyright © 2018 Shimokochi Shoma. All rights reserved.
//

import Cocoa

protocol ImageInspectorDelegate{
    func sample()
}

class ImageInspectorViewController: NSViewController{
    
    var delegate:ImageInspectorDelegate?
    var propertyModel:AAPropertyModel?
    
    @IBOutlet weak var colorWell: NSColorWell!
    
    
    
    
    func sample2(){
        print("image inspector")
    }
    
    @IBAction func changeColorWellValue(_ sender: Any) {
        propertyModel?.background = colorWell.color
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
    }
    
    
    @IBAction func sample(_ sender: Any) {
//        propertyModel.background = NSColor.systemBrown
//        notification.post(name: .didChangeBackground, object: nil, userInfo:["windowNumber":windowNumber])
//        NSApplication.shared.sendAction(action:changeBackground(), to: nil, from: self)
    }
    
}
