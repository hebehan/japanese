//
//  Utils.h
//  japanese
//
//  Created by Hebe on 2016/10/27.
//  Copyright (c) 2016 Hebe. All rights reserved.
//

#import "UIKit/UIKit.h"
#import "AVFoundation/AVFoundation.h"

@interface Utils : NSObject

+(NSMutableArray *)getQYSoundArray;
+(NSMutableArray *)getQAYSoundArray;
+(NSMutableArray *)getZYSoundArray;
+(NSMutableArray *)getZAYSoundArray;
+(NSMutableArray *)getTypeArray:(NSInteger)type arraycount:(NSInteger)count;
+(UIColor *)getUIColorByString:(NSString *)hexcolor;
@end
