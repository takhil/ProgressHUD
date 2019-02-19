//
//  CommonFunctions.swift
//  PKProgressHud
//
//  Created by phani kumar on 10/06/18.
//  Copyright © 2018 phani kumar. All rights reserved.
//

import UIKit

class CommonFunctions: NSObject {
    
    static var hudObject:UIView?
    
    class func showHUD() {
        DispatchQueue.main.async(execute: {
            self.hudObject = Bundle.main.loadNibNamed("View", owner: self, options: nil)?[0] as? UIView
          self.hudObject?.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
            UIApplication.shared.keyWindow?.addSubview(self.hudObject!)
        })
    }
    
    class func removeHud() {
        DispatchQueue.main.async(execute: {
            self.hudObject!.removeFromSuperview()
        })
    }

}
