//
//  PeekSoundPreViewController.m
//  japanese
//
//  Created by Hebe on 2016/10/28.
//  Copyright (c) 2016 Hebe. All rights reserved.
//

#import "PeekSoundPreViewController.h"
#import "SoundCell.h"
#import "SoundBean.h"

@implementation PeekSoundPreViewController

- (void)viewDidLoad {
    SoundCell *cell = [[SoundCell alloc] initWithFrame:CGRectMake((self.view.frame.size.width-100)/2,StartY+50,100,80)];
    cell.pingjia.text = self.bean.pingjia;
    cell.pianjia.text = self.bean.pianjia;
    cell.luoma.text = self.bean.luoma;
    [self.view addSubview:cell];
}
@end
