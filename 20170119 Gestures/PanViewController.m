//
//  PanViewController.m
//  20170119 Gestures
//
//  Created by Minhung Ling on 2017-01-19.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "PanViewController.h"

@interface PanViewController ()

@end

@implementation PanViewController
- (IBAction)redViewPanned:(UIPanGestureRecognizer *)sender {
//    CGPoint locationInView = [sender locationInView:self.view];
//    sender.view.center = locationInView;
    CGPoint translationInView = [sender translationInView:self.view];
    CGPoint oldPosition = sender.view.center;
    CGPoint newPosition = CGPointMake(oldPosition.x + translationInView.x, oldPosition.y + translationInView.y);
    sender.view.center = newPosition;
    [sender setTranslation:CGPointZero inView:self.view];
}

@end
