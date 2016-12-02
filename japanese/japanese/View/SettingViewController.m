//
//  CheckViewController.m
//  japanese
//
//  Created by Hebe on 2016/11/2.
//  Copyright (c) 2016 Hebe. All rights reserved.
//

#import "SettingViewController.h"
@interface SettingViewController()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation SettingViewController{
    UITableView *settingTableView;
    NSArray *settingArray;
}

- (void)viewDidLoad {
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"设置";
    settingArray = @[@"关于",@"好评"];
    settingTableView = [[UITableView alloc] initWithFrame:CGRectMake(0,StartY, self.view.frame.size.width, self.view.frame.size.height-StartY-TabBarHeight) style:UITableViewStylePlain];
    settingTableView.delegate = self;
    settingTableView.dataSource = self;
    [settingTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    [self.view addSubview:settingTableView];
//    settingTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [settingTableView setTableFooterView:[[UIView alloc] init]];//去掉多余横线
    [self setAutomaticallyAdjustsScrollViewInsets:NO];
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return settingArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell  = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text = [settingArray objectAtIndex:indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.imageView.image = [UIImage imageNamed:@"setting"];
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

@end
