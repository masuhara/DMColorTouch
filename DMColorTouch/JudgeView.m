//
//  JudgeView.m
//  DMColorTouch
//
//  Created by Master on 2014/08/14.
//  Copyright (c) 2014年 jp.co.mappy. All rights reserved.
//

#import "JudgeView.h"

@implementation JudgeView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.userInteractionEnabled = YES;
        self.tag = 2;
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
