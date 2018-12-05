//
//  BounceControllerViewController.m
//  TheInternalObjCStaticFramework
//
//  Created by Laurie Keith on 05/12/2018.
//  Copyright © 2018 Laurie Laptop. All rights reserved.
//

#import "BounceControllerViewController.h"

@interface BounceControllerViewController ()

#pragma mark - Controller Properties

@property (nonatomic, strong) UIImageView *ballView;

@end

@implementation BounceControllerViewController

#pragma mark - View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.ballView = [[UIImageView alloc] init];
    NSBundle *bundle = [NSBundle bundleForClass:[BounceControllerViewController class]];
    UIImage *image = [UIImage imageNamed:@"Ball" inBundle:bundle compatibleWithTraitCollection: nil];
    self.ballView.image = image;
    self.ballView.frame = CGRectMake(0, 0, 128, 128);
    self.ballView.center = self.view.center;
    [self.view addSubview:self.ballView];
}

- (void)viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    
    CAKeyframeAnimation *trans = [CAKeyframeAnimation animationWithKeyPath:@"transform.translation.y"];
    NSArray *values = @[@(-200),@(20),@(0)];
    trans.values = values;
    NSArray *times = @[@(0.0),@(0.85),@(1)];
    trans.keyTimes = times;
    trans.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    trans.autoreverses = YES;
    trans.duration = 1.0;
    trans.repeatCount = INFINITY;
    
    CAKeyframeAnimation *scaleXAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale.x"];
    NSArray *scaleXValues = @[@(0.75),@(0.75),@(1)];
    scaleXAnimation.values = scaleXValues;
    NSArray *scaleXtimes = @[@(0.0),@(0.85),@(1)];
    scaleXAnimation.keyTimes = scaleXtimes;
    scaleXAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    scaleXAnimation.autoreverses = YES;
    scaleXAnimation.duration = 1.0;
    scaleXAnimation.repeatCount = INFINITY;
    
    CAKeyframeAnimation *scaleYAnimation = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale.y"];
    NSArray *scaleYValues = @[@(0.75),@(1),@(0.85)];
    scaleYAnimation.values = scaleYValues;
    NSArray *scaleYtimes = @[@(0.1),@(0.5),@(1)];
    scaleYAnimation.keyTimes = scaleYtimes;
    scaleYAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    scaleYAnimation.autoreverses = YES;
    scaleYAnimation.duration = 1.0;
    scaleYAnimation.repeatCount = INFINITY;
    
    [self.ballView.layer addAnimation:scaleXAnimation forKey:@"scaleX"];
    [self.ballView.layer addAnimation:scaleYAnimation forKey:@"scaleY"];
    [self.ballView.layer addAnimation:trans forKey:@"trans"];
    
}

@end
