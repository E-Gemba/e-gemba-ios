//
//  UITextField+Underline.m
//  EGemba
//
//  Created by edi s on 08/07/18.
//  Copyright © 2018 egemba. All rights reserved.
//

#import "UITextField+Underline.h"
#import <Masonry/Masonry.h>

@implementation UITextField (Underline)


- (void)setupUnderline
{
    [self setupUnderlineWithColor:[UIColor cyanColor]];
}

- (void)setupUnderlineWithColor:(UIColor *)color
{
    self.borderStyle = UITextBorderStyleNone;
    UIView *underLineView = [[UIView alloc] init];
    underLineView.backgroundColor = color;
    [self addSubview:underLineView];
    [underLineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.mas_equalTo(0);
        make.trailing.mas_equalTo(0);
        make.height.mas_equalTo(1);
        make.bottom.mas_equalTo(0);
    }];
}

@end
