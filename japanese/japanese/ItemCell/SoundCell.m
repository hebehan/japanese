//
//  SoundCell.m
//  japanese
//
//  Created by Hebe on 2016/10/27.
//  Copyright (c) 2016 Hebe. All rights reserved.
//

#import "SoundCell.h"

@implementation SoundCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self){
        self.pingjia = [[UILabel alloc] initWithFrame:CGRectMake(0,0,frame.size.width,frame.size.height/3)];
        self.pianjia = [[UILabel alloc] initWithFrame:CGRectMake(0,self.pingjia.frame.origin.y+self.pingjia.frame.size.height,frame.size.width,frame.size.height/3)];
        self.luoma = [[UILabel alloc] initWithFrame:CGRectMake(0,self.pianjia.frame.origin.y+self.pianjia.frame.size.height,frame.size.width,frame.size.height/3)];
        self.pingjia.textAlignment = NSTextAlignmentCenter;
        self.pianjia.textAlignment = NSTextAlignmentCenter;
        self.luoma.textAlignment = NSTextAlignmentCenter;

        self.pingjia.textColor = [UIColor redColor];
        self.pianjia.textColor = [UIColor blueColor];
        self.luoma.textColor = [UIColor greenColor];

        self.pingjia.font = [UIFont systemFontOfSize:14];
        self.pianjia.font = [UIFont systemFontOfSize:14];
        self.luoma.font = [UIFont systemFontOfSize:14];
        self.backgroundColor = [UIColor grayColor];
        [self addSubview:self.pingjia];
        [self addSubview:self.pianjia];
        [self addSubview:self.luoma];
    }
    return self;
}

@end
