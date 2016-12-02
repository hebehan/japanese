//
//  AppConstant.h
//  japanese
//
//  Created by Hebe on 2016/10/27.
//  Copyright (c) 2016 Hebe. All rights reserved.
//

#ifndef AppConstant_h
#define AppConstant_h

#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)
#define StatusBarHeight    20
#define TabBarHeight       49
#define NavBarHeight       44
#define StartY             64
#define NormalHeight       [UIScreen mainScreen].bounds.size.height-20-44
#define KEYBORD_HEIGHT     258
#define CellBackgroundColor ([Utils getUIColorByString:@"#97C2A7"])
#define CheckCellClickedColor ([Utils getUIColorByString:@"#57CADB"])
#define CheckCellNormalColor ([Utils getUIColorByString:@"#C9AEAE"])

#endif /* AppConstant_h */
