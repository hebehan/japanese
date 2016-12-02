//
//  BaseViewController.h
//  firstiosapp
//
//  Created by Hebe on 16/7/25.
//  Copyright © 2016年 Hebe. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface BaseViewController : UIViewController
- (UIColor *)getUIColorByString:(NSString *)hexcolor;

- (void)saveObjConf:(nullable id)config key:(NSString *)key;
- (void)saveIntConf:(NSInteger)config key:(NSString *)key;
- (void)saveBoolConf:(BOOL)config key:(NSString *)key;
- (void)saveFloatConfg:(CGFloat)config key:(NSString *)key;
- (void)saveDoubleConfg:(CGFloat)config key:(NSString *)key;
- (id)getObjConfig:(NSString *)key;
- (NSInteger)getIntConfig:(NSString *)key;
- (BOOL)getBoolConfig:(NSString *)key;
- (CGFloat)getFloatConfig:(NSString *)key;
- (double)getDoubleConfig:(NSString *)key;
- (void)removeObjConfig:(NSString *)key;
- (void)clearConfig;
@end
