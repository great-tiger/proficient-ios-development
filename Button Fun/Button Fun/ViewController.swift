//
//  ViewController.swift
//  Button Fun
//
//  Created by 李青柳 on 16/2/16.
//  Copyright © 2016年 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /*
        在使用auto layout的时候label一直有橙色线，不知为何。
        问题还真不好找，是因为label中的默认值，被我删掉了。加上就可以了。
    */
    
    @IBAction func btnPressed(sender: UIButton) {
      let title=sender.titleForState(.Normal)!;
      let plainText="\(title) button pressed";
       statusLabel.text=plainText;
    
    }
    
    @IBOutlet weak var statusLabel: UILabel!
    
}

