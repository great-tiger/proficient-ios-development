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
       
        //这么写无样式，下面演示有样式的一段文字
        //statusLabel.text=plainText;
        
        /*
        在iOS开发中，常常会有一段文字显示不同的颜色和字体
        NSMutableAttributedString带属性的字符串,可以轻松的实现
        
        NSFontAttributeName 			字体
        NSParagraphStyleAttributeName 		段落格式
        NSForegroundColorAttributeName 		字体颜色
        NSBackgroundColorAttributeName  	背景颜色
        NSStrikethroughStyleAttributeName	删除线格式
        NSUnderlineStyleAttributeName     	下划线格式
        NSStrokeColorAttributeName       	删除线颜色
        NSStrokeWidthAttributeName		删除线宽度
        NSShadowAttributeName 			阴影
        更多方法和属性说明详见苹果官方说明文档：
        https://developer.apple.com/library/ios/documentation/Cocoa/Reference/Foundation/Classes/NSMutableAttributedString_Class/Reference/Reference.html#//apple_ref/doc/uid/TP40003689
        */
        
        let styledText=NSMutableAttributedString(string: plainText);
        let attributes=[
            //UIFont.boldSystemFontOfSize  粗体
            NSFontAttributeName:UIFont.boldSystemFontOfSize(statusLabel.font.pointSize)
        ];
        let nameRange=(plainText as NSString).rangeOfString(title);
        styledText.setAttributes(attributes,range:nameRange);
        statusLabel.attributedText=styledText;
        
    
    }
    
    @IBOutlet weak var statusLabel: UILabel!
    
}

