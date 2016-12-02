//
//  CheckCell.m
//  japanese
//
//  Created by Hebe on 2016/11/29.
//  Copyright (c) 2016 Hebe. All rights reserved.
//

#import "CheckCell.h"
#import "Utils.h"

@interface CheckCell()

    @property (nonatomic, readwrite)NSInteger state;

@end
@implementation CheckCell

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self){
        self.title = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height/2)];
        self.title.font = [UIFont systemFontOfSize:17];
        self.title.textAlignment = NSTextAlignmentCenter;
        self.title.textColor = [UIColor blackColor];

        self.backgroundColor = CellBackgroundColor;
        [self addSubview:self.title];
        self.state = StateNormal;
    }

    return self;
}

-(void)setCheckState:(CheckCellState)state {
    self.state = state;
    [self setNeedsDisplay];
    if (self.state == StateRight){
        self.title.text = @"";
        self.backgroundColor = [UIColor whiteColor];
    } else{
        self.backgroundColor = CellBackgroundColor;
    }
}

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    if (self.state == StateCliked){
        CGContextSetFillColorWithColor(context, CheckCellClickedColor.CGColor);
    } else if (self.state == StateNormal){
        CGContextSetFillColorWithColor(context, CheckCellNormalColor.CGColor);
    } else if (self.state == StateRight){
        CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor);
    }
    CGContextAddArc(context,(rect.size.width)/2, rect.size.height-2*7.5, 7.5, 0, 2*M_PI,0);
    CGContextDrawPath(context, kCGPathFill);
}
@end
