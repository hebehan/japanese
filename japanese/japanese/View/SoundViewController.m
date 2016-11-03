//
//  SoundViewController.m
//  japanese
//
//  Created by Hebe on 2016/11/2.
//  Copyright (c) 2016 Hebe. All rights reserved.
//

#import "SoundViewController.h"
#import "QingYinViewController.h"
#import "QingAoYinViewController.h"
#import "ZhuoYinViewController.h"
#import "ZhuoAoYinViewController.h"
#import "YSLContainerViewController.h"

@interface SoundViewController()<YSLContainerViewControllerDelegate>

@end
@implementation SoundViewController

- (void)viewDidLoad {
    self.title = @"五十音图";
    QingYinViewController *qingYinViewController = [[QingYinViewController alloc] init];
    QingAoYinViewController *qingAoYinViewController = [[QingAoYinViewController alloc] init];
    ZhuoYinViewController *zhuoYinViewController = [[ZhuoYinViewController alloc] init];
    ZhuoAoYinViewController *zhuoAoYinViewController = [[ZhuoAoYinViewController alloc] init];

    qingYinViewController.title = @"清音";
    qingAoYinViewController.title = @"清拗音";
    zhuoYinViewController.title = @"浊音";
    zhuoAoYinViewController.title = @"浊拗音";

    YSLContainerViewController *yslContainerVC = [[YSLContainerViewController alloc] initWithControllers:@[qingYinViewController,qingAoYinViewController,zhuoYinViewController,zhuoAoYinViewController] topBarHeight:StartY parentViewController:self];
    yslContainerVC.delegate = self;
    yslContainerVC.menuItemFont = [UIFont fontWithName:@"Futura-Medium" size:16];
    [self.view addSubview:yslContainerVC.view];
}

- (void)containerViewItemIndex:(NSInteger)index currentController:(UIViewController *)controller {
    [controller viewWillAppear:YES];
}

@end
