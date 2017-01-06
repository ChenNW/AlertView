//
//  UITextField+ Extension.m
//  JRD
//
//  Created by mac on 16/9/12.
//  Copyright © 2016年 Cnw. All rights reserved.
//

#import "UITextField+ Extension.h"
#define btn_hight(x) iPhone4s || iPhone5s ?40-x: 50-x

#define textfile_font(x) iPhone4s || iPhone5s ?15-x: 16-x
@implementation UITextField(Extension)

+(UITextField *)textFieldWithFrame:(CGRect)frame andPlaceholder:(NSString *)placeholder{
    
    UITextField *textFiled = [[UITextField alloc] initWithFrame:frame];
    textFiled.placeholder = placeholder;
    textFiled.borderStyle = UITextBorderStyleRoundedRect;
    return textFiled;
}

@end
