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
    
    NSArray *allTouches = [touches allObjects];
    UITouch *touch = [[touches allObjects] objectAtIndex:0];
    touch = [[event allTouches] anyObject];
    CGPoint location = [touch locationInView:mObjectView];
    
    UIColor *currentColor = [mObjectView colorOfPoint:location];
    
    
    
//    NSLog(@"%@", NSStringFromClass([[[mObjectView subviews] objectAtIndex:0] class]));
//    
//    if ([event touchesForView:[[mObjectView subviews] objectAtIndex:0]]) {
//        NSLog(@"name of sub %@", [[[mObjectView subviews] objectAtIndex:0] class]);
//    }
    
    // Log
    //NSLog(@"Alpha: %d", (int)CGColorGetAlpha(currentColor.CGColor));
    
    for (UITouch *touch in allTouches)
    {
        if (touch.view.tag == 2) {
            NSLog(@"2");
        }else if(touch.view.tag == 1){
            NSLog(@"1");
        }else{
            NSLog(@"touch == %@", allTouches);
        }
    }
    
    
    // Game Over
    if ((int)CGColorGetAlpha(currentColor.CGColor) == 1) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Game Over" message:nil delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
        [alertView show];
    }
}









@end
