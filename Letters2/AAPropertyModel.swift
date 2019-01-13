//
//  AAPropertyModel.swift
//  Letters2
//
//  Created by Shimokochi Katsunori on 2018/12/10.
//  Copyright © 2018 Shimokochi Shoma. All rights reserved.
//

import Cocoa

protocol AAPropertyModelDelegate:class {
    func didBackgroundChange()
    func didImageChange()
}

extension AAPropertyModelDelegate {
    func didBackgroundChange() {
        
    }
    func didImageChange() {
        
    }
}
class AAPropertyModel {
    weak var delegate: AAPropertyModelDelegate?
    
    var image:NSImage? {
        didSet {
            delegate?.didImageChange()
        }
    }
    var background:NSColor {
        didSet {
            delegate?.didBackgroundChange()
        }
    }
    init() {
        background = NSColor.systemGreen
    }
    
}
