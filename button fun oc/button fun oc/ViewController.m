//
//  ViewController.m
//  button fun oc
//
//  Created by 李青柳 on 16/2/20.
//  Copyright © 2016年 test. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)buttonPressed:(UIButton *)sender;
@property (weak, nonatomic) IBOutlet UILabel *statusLabel;

@end

@implementation ViewController


- (IBAction)buttonPressed:(UIButton *)sender {
    NSString *title=[sender titleForState:UIControlStateNormal];
    NSString *plainText=[NSString stringWithFormat:@"%@ button pressed",title];
    //_statusLabel.text=plainText;
    
    //实例化 NSMutableAttributedString
    NSMutableAttributedString *styledText=[[NSMutableAttributedString alloc] initWithString:plainText];
    //定义属性集合
    NSDictionary *attributes=@{
                               NSFontAttributeName:[UIFont boldSystemFontOfSize:_statusLabel.font.pointSize]
                               };
    NSRange nameRange=[plainText rangeOfString:title];
    //设置属性
    [styledText setAttributes:attributes range:nameRange];
    
    _statusLabel.attributedText=styledText;
}
@end
