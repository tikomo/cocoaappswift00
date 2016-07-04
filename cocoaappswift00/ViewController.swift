//
//  ViewController.swift
//  cocoaappswift00
//
//  Created by KomoritaTsuyoshi on 2016/07/04.
//  Copyright © 2016年 KomoritaTsuyoshi. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    
    @IBOutlet weak var iv1: NSImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


    @IBAction func btn1Click(sender: AnyObject) {
        
        
        let openPanel = NSOpenPanel()
        openPanel.title = "Choose a image file"
        openPanel.allowedFileTypes = ["png","jpg"]
        openPanel.allowsMultipleSelection = false
        openPanel.canChooseDirectories = false
        openPanel.canCreateDirectories = false
        openPanel.canChooseFiles = true

        /*
        // case1
        let result=openPanel.runModal()
        
        if result == NSFileHandlingPanelOKButton {
            let img=NSImage(contentsOfURL:openPanel.URL!)
            self.iv1.image=img
        }
        */
        
        // case2
        openPanel.beginWithCompletionHandler({(result:Int) in
            if(result == NSFileHandlingPanelOKButton)
            {
                let img=NSImage(contentsOfURL:openPanel.URL!)
                self.iv1.image=img
            }
        })
        
    }
}

