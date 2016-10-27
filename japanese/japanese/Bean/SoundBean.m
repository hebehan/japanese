//
//  SoundBean.m
//  japanese
//
//  Created by Hebe on 2016/10/27.
//  Copyright (c) 2016 Hebe. All rights reserved.
//

#import "SoundBean.h"

@implementation SoundBean

- (instancetype)initWith:(NSString *)pingjia pianjia:(NSString *)pianjia luoma:(NSString *)luoma {
    if (self = [super init]){
        self.pingjia = pingjia;
        self.pianjia = pianjia;
        self.luoma = luoma;
        return self;
    } else{
        return nil;
    }
}
@end
