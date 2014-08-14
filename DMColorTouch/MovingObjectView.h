//
//  MovingObjectView.h
//  DMColorTouch
//
//  Created by Master on 2014/08/14.
//  Copyright (c) 2014年 jp.co.mappy. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MovingObjectView : UIImageView
{
    NSTimer *timer;
    int angle;
    
    int moveX;
    int moveY;
    int randomNum;
}


- (void)startMovingWithLotation:(int)direction;


@end
