//
//  ViewController.swift
//  Button Fun
//
//  Created by 李青柳 on 16/2/16.
//  Copyright © 2016年 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func btnPressed(sender: UIButton) {
      let title=sender.titleForState(.Normal)!;
      let plainText="\(title) button pressed";
       statusLabel.text=plainText;
    
    }
    
    @IBOutlet weak var statusLabel: UILabel!
    
}

