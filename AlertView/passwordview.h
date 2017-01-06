//
//  passwordview.h
//  JRDDemo
//
//  Created by Cnw on 2017/1/5.
//  Copyright © 2017年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface passwordview : UIView
/** 输入密码的view */
@property(nonatomic ,strong)UIView *passwordView;
/** 显示钱数的label */
@property(nonatomic ,strong)UILabel *moneyLabel;
/** 输入框 */
@property(nonatomic ,strong)UITextField *passwordField;
/** 确定按钮 */
@property(nonatomic ,strong)UIButton *sureBtn;
- (void)show;
- (void)dismiss;

@end
