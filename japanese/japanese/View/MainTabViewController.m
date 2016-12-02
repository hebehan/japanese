//
//  MainTabViewController.m
//  japanese
//
//  Created by Hebe on 2016/10/31.
//  Copyright (c) 2016 Hebe. All rights reserved.
//

#import "MainTabViewController.h"
#import "SoundViewController.h"
#import "CheckViewController.h"
#import "SettingViewController.h"
#import "Utils.h"

@implementation MainTabViewController

- (void)viewDidLoad {
    self.view.backgroundColor = [UIColor whiteColor];
//    self.tabBar.backgroundColor = [UIColor blackColor];
    self.tabBar.tintColor = [Utils getUIColorByString:@"#57cadb"];
    [self setUpAllChildVC];
    self.tabBar.translucent = NO;
}

-(void)setUpAllChildVC{
    SoundViewController *reportViewController = [[SoundViewController alloc] init];
    [self addOneVC:reportViewController normalImage:[UIImage imageNamed:@"sound"] selectImage:[UIImage imageNamed:@"sound"] title:@"五十音图"];

    CheckViewController *newsViewController = [[CheckViewController alloc] init];
    [self addOneVC:newsViewController normalImage:[UIImage imageNamed:@"check"] selectImage:[UIImage imageNamed:@"check"] title:@"自测"];

    SettingViewController *meViewcontroller = [[SettingViewController alloc] init];
    [self addOneVC:meViewcontroller normalImage:[UIImage imageNamed:@"setting"] selectImage:[UIImage imageNamed:@"setting"] title:@"设置"];

}
-(void)addOneVC:(UIViewController *)controller normalImage:(UIImage *)normalImage selectImage:(UIImage *)selectImage title:(NSString *)title{
    UINavigationController *baseNavigationController = [[UINavigationController alloc] initWithRootViewController:controller];
    controller.tabBarItem.image = normalImage;
    controller.tabBarItem.selectedImage = selectImage;
    controller.tabBarItem.title = title;
    [self addChildViewController:baseNavigationController];
}
@end
