//
//  BaseViewController.m
//  firstiosapp
//
//  Created by Hebe on 16/7/25.
//  Copyright © 2016年 Hebe. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()<UIAlertViewDelegate>
@property (retain, nonatomic)UIAlertView *alertView;
@end

@implementation BaseViewController
- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
