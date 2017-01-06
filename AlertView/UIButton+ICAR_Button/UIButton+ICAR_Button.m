

#import "UIButton+ICAR_Button.h"

@implementation UIButton (ICAR_Button)

/**
 *  按钮的建立
 *
 *  @param frame     尺寸坐标
 *  @param title     名字
 *  @param imageName 图片名字
 */
+ (UIButton*)ButtonWithFrame:(CGRect)frame Title:(NSString*)title ImageName:(NSString*)imageName selectImageName:(NSString *)selectName
{
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = frame;
    btn.clipsToBounds = YES;
    btn.layer.cornerRadius = 3;
    [btn setTitle:title forState:UIControlStateNormal];
     [btn.imageView setContentMode:UIViewContentModeCenter];
    [btn.titleLabel setContentMode:UIViewContentModeCenter];
    if (imageName != nil) {
        [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    }
    if (selectName != nil) {
        [btn setImage:[UIImage imageNamed:@"Selected"] forState:UIControlStateSelected];
    }
    [btn setSelected:NO];
    return btn;
}
@end
