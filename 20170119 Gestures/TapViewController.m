//
//  TapViewController.m
//  20170119 Gestures
//
//  Created by Minhung Ling on 2017-01-19.
//  Copyright © 2017 Minhung Ling. All rights reserved.
//

#import "TapViewController.h"

@interface TapViewController ()

@end

@implementation TapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat height = 100;
    CGFloat width = 100;
    CGRect frame = CGRectMake(CGRectGetMidX(self.view.bounds), CGRectGetMidY(self.view.bounds), width, height);
    UIView *view = [[UIView alloc] initWithFrame:frame];
    view.backgroundColor = [UIColor purpleColor];
    [self.view addSubview:view];
    
    UITapGestureRecognizer *tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(changeColour:)];
    [view addGestureRecognizer:tapGestureRecognizer];
}

- (void) changeColour: (UITapGestureRecognizer *) sender {
    sender.view.backgroundColor = [sender.view.backgroundColor isEqual:[UIColor blueColor]] ? [UIColor redColor] : [UIColor blueColor];
}
@end
