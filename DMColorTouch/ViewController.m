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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




#pragma mark - 

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    
    UITouch *touch = [[touches allObjects] objectAtIndex:0];
    touch = [[event allTouches] anyObject];
    CGPoint location = [touch locationInView:imageView];
    
    UIColor *currentColor = [imageView colorOfPoint:location];
    
    // Log
    NSLog(@"color == %@", currentColor);
    NSLog(@"Alpha: %d", (int)CGColorGetAlpha(currentColor.CGColor));
    
    
    // Game Over
    if ((int)CGColorGetAlpha(currentColor.CGColor) == 1) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Game Over" message:nil delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        [alertView show];
    }
}









@end
