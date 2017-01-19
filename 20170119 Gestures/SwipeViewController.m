//
//  SwipeViewController.m
//  20170119 Gestures
//
//  Created by Minhung Ling on 2017-01-19.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "SwipeViewController.h"

@interface SwipeViewController ()

@end

@implementation SwipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat height = 50;
    CGFloat width = 375;
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds) - width/2, CGRectGetMidY(self.view.bounds) - height/2, width, height);
    UIView *view = [[UIView alloc] initWithFrame:frame];
    CGRect frame2 = CGRectMake(CGRectGetMidX(view.bounds) - width/2, CGRectGetMidY(view.bounds) - height/2, width, height);
    UIView *view2 = [[UIView alloc] initWithFrame:frame2];
    view.backgroundColor = [UIColor brownColor];
    view2.backgroundColor = [UIColor whiteColor];
    view.clipsToBounds = YES;
    [self.view addSubview:view];
    [view addSubview:view2];
    
    UISwipeGestureRecognizer *swipeGestureRecognizer = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(boxBox:)];
    [swipeGestureRecognizer setDirection:UISwipeGestureRecognizerDirectionRight];
    UISwipeGestureRecognizer *swipeGestureRecognizer2 = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(boxBox:)];
    [swipeGestureRecognizer setDirection:UISwipeGestureRecognizerDirectionLeft];
    [view2 addGestureRecognizer:swipeGestureRecognizer];
    [view2 addGestureRecognizer:swipeGestureRecognizer2];
}

- (void) boxBox: (UISwipeGestureRecognizer*) sender {
    switch (sender.direction) {
        case UISwipeGestureRecognizerDirectionLeft:
        {
            sender.view.transform = CGAffineTransformMakeTranslation(-50, 0);
            break;
        }
        case UISwipeGestureRecognizerDirectionRight:
        {
            sender.view.transform = CGAffineTransformMakeTranslation(0, 0);
            break;
        }
        default:
            break;
    }
}

@end
