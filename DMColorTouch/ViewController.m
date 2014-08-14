//
//  ViewController.m
//  DMColorTouch
//
//  Created by Master on 2014/08/12.
//  Copyright (c) 2014年 jp.co.mappy. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    mObjectView = [[MovingObjectView alloc] initWithFrame:CGRectMake(120, 174, 200, 200)];
    [mObjectView startMovingWithLotation:4];
    [self.view addSubview:mObjectView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{

}


#pragma mark - 

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    
    UITouch *touch = [[touches allObjects] objectAtIndex:0];
    touch = [[event allTouches] anyObject];
    CGPoint location = [touch locationInView:mObjectView];
    
    UIColor *currentColor = [mObjectView colorOfPoint:location];
    
    // Judge
    
    
    // Log
    //NSLog(@"Alpha: %d", (int)CGColorGetAlpha(currentColor.CGColor));
    
    
    // Game Over
    if ((int)CGColorGetAlpha(currentColor.CGColor) == 1) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Game Over" message:nil delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        [alertView show];
    }
}









@end
