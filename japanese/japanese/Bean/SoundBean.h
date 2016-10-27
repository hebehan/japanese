//
//  SoundBean.h
//  japanese
//
//  Created by Hebe on 2016/10/27.
//  Copyright (c) 2016 Hebe. All rights reserved.
//



#import "UIKit/UIKit.h"

@interface SoundBean : NSObject
-(instancetype)initWith:(NSString *)pingjia pianjia:(NSString *)pianjia luoma:(NSString *)luoma;
@property (nonatomic, copy)NSString *pingjia;
@property (nonatomic, copy)NSString *pianjia;
@property (nonatomic, copy)NSString *luoma;
@end
