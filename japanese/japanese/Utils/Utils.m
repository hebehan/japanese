//
//  Utils.m
//  japanese
//
//  Created by Hebe on 2016/10/27.
//  Copyright (c) 2016 Hebe. All rights reserved.
//

#import "Utils.h"
#import "SoundBean.h"

@implementation Utils

+ (NSMutableArray *)getSoundArray {
    SoundBean *a = [[SoundBean alloc] initWith:@"あ" pianjia:@"ア" luoma:@"a"];
    SoundBean *i = [[SoundBean alloc] initWith:@"い" pianjia:@"イ" luoma:@"i"];
    SoundBean *u = [[SoundBean alloc] initWith:@"う" pianjia:@"ウ" luoma:@"u"];
    SoundBean *e = [[SoundBean alloc] initWith:@"え" pianjia:@"エ" luoma:@"e"];
    SoundBean *o = [[SoundBean alloc] initWith:@"お" pianjia:@"オ" luoma:@"o"];

    SoundBean *ka = [[SoundBean alloc] initWith:@"か" pianjia:@"カ" luoma:@"ka"];
    SoundBean *ki = [[SoundBean alloc] initWith:@"き" pianjia:@"キ" luoma:@"ki"];
    SoundBean *ku = [[SoundBean alloc] initWith:@"く" pianjia:@"ク" luoma:@"ku"];
    SoundBean *ke = [[SoundBean alloc] initWith:@"け" pianjia:@"ケ" luoma:@"ke"];
    SoundBean *ko = [[SoundBean alloc] initWith:@"こ" pianjia:@"コ" luoma:@"ko"];

    NSMutableArray *soundarray = [[NSMutableArray alloc] init];
    [soundarray addObject:a];
    [soundarray addObject:i];
    [soundarray addObject:u];
    [soundarray addObject:e];
    [soundarray addObject:o];

    [soundarray addObject:ka];
    [soundarray addObject:ki];
    [soundarray addObject:ku];
    [soundarray addObject:ke];
    [soundarray addObject:ko];
    return soundarray;
}
@end
