//
//  ViewController.m
//  AlertView
//
//  Created by Cnw on 2017/1/5.
//  Copyright © 2017年 Cnw. All rights reserved.
//

#import "ViewController.h"
#import "passwordview.h"
@interface ViewController ()
/** AlertView */
@property(nonatomic ,strong)passwordview *passwordView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.passwordView = [[passwordview alloc] init];
    // 确定按钮的点击
    [self.passwordView.sureBtn addTarget:self action:@selector(sureAction) forControlEvents:UIControlEventTouchUpInside];
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.passwordView show];
    
}
-(void)sureAction
{
#pragma mark-  进行一些操作
    NSLog(@"确定按钮的点击");
    [self.passwordView dismiss];
}

@end
