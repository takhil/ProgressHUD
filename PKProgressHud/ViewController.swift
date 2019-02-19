//
//  ViewController.swift
//  PKProgressHud
//
//  Created by phani kumar on 10/06/18.
//  Copyright © 2018 phani kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func presentHud(_ sender: Any) {
        CommonFunctions.showHUD()
        DispatchQueue.global(qos: .default).asyncAfter(deadline: DispatchTime.now() + Double(20.0 * Double(NSEC_PER_SEC)) / Double(NSEC_PER_SEC), execute: {
            CommonFunctions.removeHud()
        })

    }
    

}

