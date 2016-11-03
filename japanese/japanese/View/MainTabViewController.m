//
//  MainTabViewController.m
//  japanese
//
//  Created by Hebe on 2016/10/31.
//  Copyright (c) 2016 Hebe. All rights reserved.
//

#import "QingYinViewController.h"
#import "MainTabViewController.h"
#import "SoundViewController.h"
#import "CheckViewController.h"
#import "SettingViewController.h"

@implementation MainTabViewController

- (void)viewDidLoad {
    self.view.backgroundColor = [UIColor whiteColor];
    self.tabBar.backgroundColor = [UIColor blackColor];
    self.tabBar.tintColor = [UIColor blackColor];
    [self setUpAllChildVC];
    self.tabBar.translucent = NO;
}

-(void)setUpAllChildVC{
    SoundViewController *reportViewController = [[SoundViewController alloc] init];
    [self addOneVC:reportViewController normalImage:nil selectImage:nil title:@"normal"];

    CheckViewController *newsViewController = [[CheckViewController alloc] init];
    [self addOneVC:newsViewController normalImage:nil selectImage:nil title:@"list"];

    SettingViewController *meViewcontroller = [[SettingViewController alloc] init];
    [self addOneVC:meViewcontroller normalImage:nil selectImage:nil title:@"collection"];

}
-(void)addOneVC:(UIViewController *)controller normalImage:(UIImage *)normalImage selectImage:(UIImage *)selectImage title:(NSString *)title{
    UINavigationController *baseNavigationController = [[UINavigationController alloc] initWithRootViewController:controller];
    controller.tabBarItem.image = normalImage;
    controller.tabBarItem.selectedImage = selectImage;
    controller.tabBarItem.title = title;
    [self addChildViewController:baseNavigationController];
}
@end
