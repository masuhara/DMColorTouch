//
//  MovingObjectView.m
//  DMColorTouch
//
//  Created by Master on 2014/08/14.
//  Copyright (c) 2014年 jp.co.mappy. All rights reserved.
//

#import "MovingObjectView.h"

@implementation MovingObjectView
{
    
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.image = [UIImage imageNamed:@"image.png"];
        
        randomNum = arc4random() % 20;
        moveX = 0.1 * randomNum;
        if (randomNum % 2 == 0) moveX = -moveX;
        randomNum = arc4random() % 20;
        moveY = 0.1 * randomNum;
        if (randomNum % 2 == 0) moveY = -moveY;
        
        [self makeCenterView];
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


- (void)startMovingWithLotation:(int)direction
{
    if (!timer) {
        timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(setAnimation:) userInfo:nil repeats:YES];
        [timer fire];
    }
}


- (void)setAnimation:(NSTimer *)timer
{
    angle = angle + 1;
    self.transform = CGAffineTransformMakeRotation(2 * M_PI * angle / 360.0);
    if (angle >= 360) {
        angle = 0;
    }
    
    [self moveObject];
    //[self makeCenterView];
}

- (void)moveObject
{
    // 画面の大きさを取得
    CGRect main = [[UIScreen mainScreen] applicationFrame];
    
    // 初めの動きを開始
    self.center = CGPointMake(self.center.x + moveX, self.center.y + moveY);
    
    // 横壁の当たり判定
    if(self.center.x - self.bounds.size.width / 2 < 0)
    {
        moveX = - moveX;
    }
    if(self.center.x + self.bounds.size.width / 2 > main.size.width)
    {
        moveX = - moveX;
    }
    
    
    // 上下壁の当たり判定
    if(self.center.y - self.bounds.size.height / 2 < 0)
    {
        moveY = - moveY;
    }
    if(self.center.y + self.bounds.size.height / 2 > main.size.height)
    {
        moveY = - moveY;
    }
    
}


- (void)makeCenterView
{
    UIView *centerView = [[UIView alloc] initWithFrame:CGRectMake(30, 75, 50, 50)];
    centerView.backgroundColor = [UIColor clearColor];
    [self addSubview:centerView];
}




@end
