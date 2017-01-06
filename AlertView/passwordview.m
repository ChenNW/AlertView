//
//  passwordview.m
//  JRDDemo
//
//  Created by Cnw on 2017/1/5.
//  Copyright © 2017年 mac. All rights reserved.
//

#import "passwordview.h"
#import "UIColor+JRDHex.h"
#import "UILabel+ICAR_Label.h"
#import "UIView+Extend.h"
#import "UITextField+ Extension.h"
#import "UIButton+ICAR_Button.h"
#define kScreenHeight  [UIScreen mainScreen].bounds.size.height
#define kScreenWidth   [UIScreen mainScreen].bounds.size.width
#define getMax_y(view)    CGRectGetMaxY(view.frame)
#define getMax_x(view)    CGRectGetMaxX(view.frame)
#define Spacing  10
@implementation passwordview

-(instancetype)init
{
    if (self = [super init]) {
        [self setUI];
    }
    return self;
}
-(void)setUI
{
    self.frame = [UIScreen mainScreen].bounds;
    self.backgroundColor = [UIColor colorWithWhite:0.3 alpha:0.5];
    UIView * passwordView = [[UIView alloc] initWithFrame:CGRectMake(2 * Spacing, kScreenHeight/24 * 7, kScreenWidth - 4 * Spacing, kScreenHeight/12 * 5)];
    passwordView.backgroundColor = [UIColor whiteColor];
    passwordView.layer.cornerRadius = 6;
    passwordView.clipsToBounds = YES;
    self.passwordView = passwordView;
    [self addSubview:passwordView];
    
    // 布局passwordView
    // 标题label
    UILabel * label = [UILabel labelWithFrame:CGRectMake(0, 0, passwordView.width, passwordView.height/7) Text:@"提   现" TextColor:[UIColor colorWithHexString:@"#7c7c7c"]];
    label.font = [UIFont systemFontOfSize:25];
    label.textAlignment = NSTextAlignmentCenter;
    label.backgroundColor = [UIColor colorWithHexString:@"#dddddd"];
    [passwordView addSubview:label];
    
    // 显示钱数的label
    UILabel * moneyLabel = [UILabel labelWithFrame:CGRectMake(label.x, getMax_y(label), label.width, label.height * 2) Text:@"38.00 元" TextColor:[UIColor colorWithHexString:@"#f0831f"]];
    moneyLabel.font = [UIFont systemFontOfSize:36];
    moneyLabel.textAlignment = NSTextAlignmentCenter;
    self.moneyLabel = moneyLabel;
    [passwordView addSubview:moneyLabel];
    
    //输入框
    UITextField * textField = [UITextField textFieldWithFrame:CGRectMake(passwordView.width/8, getMax_y(moneyLabel), passwordView.width/4 * 3, 1.2 *label.height) andPlaceholder:@"输入密码"];
    textField.textAlignment = NSTextAlignmentCenter;
    textField.borderStyle = UITextBorderStyleLine;
    textField.layer.borderColor = [UIColor colorWithHexString:@"#c1c1c1"].CGColor;
    textField.layer.borderWidth = 0.2;
    textField.secureTextEntry = YES;
    textField.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.passwordField = textField;
    [passwordView addSubview:textField];
    
    // 提示的label
    UILabel * warnLabel = [UILabel labelWithFrame:CGRectMake(label.x, getMax_y(textField), label.width, label.height) Text:@"请输入本应用密码" TextColor:[UIColor colorWithHexString:@"#7c7c7c"]];
    warnLabel.textAlignment = NSTextAlignmentCenter;
    [passwordView addSubview:warnLabel];
    
    // 取消按钮
    UIButton * cancleBtn = [UIButton ButtonWithFrame:CGRectMake(textField.x, getMax_y(warnLabel), textField.width * 0.8/2, 1.2 * label.height) Title:@"取  消" ImageName:@"" selectImageName:@""];
    [cancleBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [cancleBtn addTarget:self action:@selector(dismiss) forControlEvents:UIControlEventTouchUpInside];
    cancleBtn.backgroundColor = [UIColor colorWithHexString:@"#c6c6c6"];
    [passwordView addSubview:cancleBtn];
    
    // 确定按钮
    UIButton * sureBtn = [UIButton ButtonWithFrame:CGRectMake(0, cancleBtn.y, cancleBtn.width, cancleBtn.height) Title:@"确  定" ImageName:@"" selectImageName:@""];
    sureBtn.x = getMax_x(textField) - sureBtn.width;
    self.sureBtn = sureBtn;
    sureBtn.backgroundColor = [UIColor colorWithHexString:@"#f0831f"];
    sureBtn.tintColor = [UIColor whiteColor];
    [passwordView addSubview:sureBtn];
    
    // 添加手势
    UITapGestureRecognizer * gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismiss)];
    [self addGestureRecognizer:gesture];
}
#pragma mark- 显示view
-(void)show
{
    [self.passwordField becomeFirstResponder];
    [[UIApplication sharedApplication].keyWindow addSubview:self];
    [[UIApplication sharedApplication].keyWindow addSubview:self.passwordView];
}
#pragma mark- 隐藏view
-(void)dismiss
{
    [self.passwordView removeFromSuperview];
    [self removeFromSuperview];
}


@end
