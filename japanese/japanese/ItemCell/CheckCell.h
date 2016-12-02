//
//  CheckCell.h
//  japanese
//
//  Created by Hebe on 2016/11/29.
//  Copyright (c) 2016 Hebe. All rights reserved.
//

#import "UIKit/UIKit.h"

@interface CheckCell : UICollectionViewCell
@property (nonatomic, strong)UILabel *title;
@property (nonatomic, readonly)NSInteger state;

typedef enum {
    StateNormal = 0,
    StateRight,
    StateCliked
} CheckCellState;
-(void)setCheckState:(CheckCellState)state;
@end
