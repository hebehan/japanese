//
//  SoundViewController.m
//  japanese
//
//  Created by Hebe on 2016/11/2.
//  Copyright (c) 2016 Hebe. All rights reserved.
//

#import "SoundViewController.h"
#import "SoundPageViewController.h"
#import "YSLContainerViewController.h"
#import "Utils.h"

@interface SoundViewController()<YSLContainerViewControllerDelegate>

@end
@implementation SoundViewController

- (void)viewDidLoad {
    self.title = @"五十音图";
    SoundPageViewController *qingYinViewController = [[SoundPageViewController alloc] init];
    SoundPageViewController *qingAoYinViewController = [[SoundPageViewController alloc] init];
    SoundPageViewController *zhuoYinViewController = [[SoundPageViewController alloc] init];
    SoundPageViewController *zhuoAoYinViewController = [[SoundPageViewController alloc] init];

    qingYinViewController.title = @"清音";
    qingYinViewController.soundArray = Utils.getQYSoundArray;
    qingYinViewController.soundType = 1;

    qingAoYinViewController.title = @"清拗音";
    qingAoYinViewController.soundArray = Utils.getQAYSoundArray;
    qingAoYinViewController.soundType = 2;

    zhuoYinViewController.title = @"浊音";
    zhuoYinViewController.soundArray = Utils.getZYSoundArray;
    zhuoYinViewController.soundType = 3;

    zhuoAoYinViewController.title = @"浊拗音";
    zhuoAoYinViewController.soundArray = Utils.getZAYSoundArray;
    zhuoAoYinViewController.soundType = 4;

    YSLContainerViewController *yslContainerVC = [[YSLContainerViewController alloc] initWithControllers:@[qingYinViewController,qingAoYinViewController,zhuoYinViewController,zhuoAoYinViewController] topBarHeight:StartY parentViewController:self];
    yslContainerVC.delegate = self;
    yslContainerVC.menuItemFont = [UIFont fontWithName:@"Futura-Medium" size:16];
    [self.view addSubview:yslContainerVC.view];
}

- (void)containerViewItemIndex:(NSInteger)index currentController:(UIViewController *)controller {
    [controller viewWillAppear:YES];
}

@end
