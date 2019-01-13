//
//  AAAreaViewController.swift
//  Letters2
//
//  Created by Shimokochi Katsunori on 2018/12/10.
//  Copyright © 2018 Shimokochi Shoma. All rights reserved.
//

import Cocoa

class AAAreaViewController: NSViewController,AAPropertyModelDelegate{
    
    @IBOutlet var arrayController: NSArrayController!
    @IBOutlet var scrollView: NSScrollView!
    
    var propertyModel: AAPropertyModel!
    var createAAModel: CreateAAModel = CreateAAModel()
    weak var delegate: AAAreaViewControllerDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
//        let AA = createAAModel.createAA(image: NSImage(contentsOf:URL(fileURLWithPath: "/Users/shimokochi/Pictures/appleLogo.png", isDirectory: false)))
//        imageView.image = AA
    }
    
    func didBackgroundChange() {
        self.scrollView.backgroundColor = propertyModel.background
    }
    
        @IBAction func createAAFromFile(_ sender: Any?){
            let openPanel :NSOpenPanel = NSOpenPanel()
            openPanel.canChooseFiles = true             // ファイル選択を許可する
            openPanel.canChooseDirectories = false      // フォルダ選択は禁止する
            openPanel.allowsMultipleSelection = true
            // 複数選択を許可する                 // ダイアログに表記される説明
    
            // jpg,png,gifのみ選択可能にする
            openPanel.allowedFileTypes = ["gif","jpg","png"]
            openPanel.beginSheetModal(for: self.view.window! ) { (result) in
                if result == NSApplication.ModalResponse.OK {
                    if let panelURL = openPanel.url {
                        self.propertyModel.image = NSImage(contentsOf: panelURL)
                        self.delegate?.finishCreateAA()
                    }
                }
            }
        }

   
}

protocol AAAreaViewControllerDelegate:class{
    func finishCreateAA()
}
