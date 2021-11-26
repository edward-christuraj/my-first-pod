//
//  ViewController.swift
//  MyCocoapodsLibrary
//
//  Created by Edward Sagayaraj on 11/26/2021.
//  Copyright (c) 2021 Edward Sagayaraj. All rights reserved.
//

import UIKit
import MyCocoapodsLibrary

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let log = Logger()
        log.printLog()
        
        let frameworkBundle = Bundle(for: Logger.self);
        let path = frameworkBundle.path(forResource: "Resources", ofType: "bundle")
        let resourceBundle = Bundle(url: URL(fileURLWithPath: path!))
        let image = UIImage(named: "flower.jpeg", in:resourceBundle, compatibleWith: nil)
        print(image);
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

