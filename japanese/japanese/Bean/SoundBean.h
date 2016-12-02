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
-(instancetype)initWith:(NSString *)pingjia pianjia:(NSString *)pianjia luoma:(NSString *)luoma shuru:(NSString *)shuru;

- (NSString *)description;
@property (nonatomic, copy)NSString *pingjia;
@property (nonatomic, copy)NSString *pianjia;
@property (nonatomic, copy)NSString *luoma;
@property (nonatomic, copy)NSString *shuru;
@property (nonatomic, copy)NSString *checksound;
@property (nonatomic, copy)NSString *checktype;
@property (nonatomic)BOOL checkState;
@end
