//
//  RotationViewController.m
//  20170119 Gestures
//
//  Created by Minhung Ling on 2017-01-19.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "RotationViewController.h"

@interface RotationViewController ()

@end

@implementation RotationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat height = 100;
    CGFloat width = 100;
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds)-width/2, CGRectGetMidY(self.view.bounds)-height/2, width, height);
    UIView *view = [[UIView alloc] initWithFrame:frame];
    view.backgroundColor = [UIColor blueColor];
    [self.view addSubview:view];
    
    UIRotationGestureRecognizer *rgr = [[UIRotationGestureRecognizer alloc] initWithTarget:self action:@selector(rotate:)];
    [view addGestureRecognizer:rgr];
}

- (void) rotate: (UIRotationGestureRecognizer *) sender {
    sender.view.transform = CGAffineTransformMakeRotation(sender.rotation);
}

@end
