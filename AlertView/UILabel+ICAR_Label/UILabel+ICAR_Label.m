

#import "UILabel+ICAR_Label.h"

@implementation UILabel (ICAR_Label)

+(UILabel *)labelWithFrame:(CGRect)frame Text:(NSString *)text TextColor:(UIColor *)textColor
{
    UILabel * label = [[UILabel alloc]initWithFrame:frame];
    label.text = text;
    label.font = [UIFont systemFontOfSize:15];
    label.textColor = textColor;
    
    return label;
}

@end
