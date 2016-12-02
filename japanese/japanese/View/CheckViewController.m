//
//  CheckViewController.m
//  japanese
//
//  Created by Hebe on 2016/11/2.
//  Copyright (c) 2016 Hebe. All rights reserved.
//

#import "CheckViewController.h"
#import "Utils.h"
#import "CheckCell.h"
#import "SoundBean.h"
#import "Toast.h"
#import "HebeNetWork.h"

@interface CheckViewController()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

@end
NSInteger checkcount = 6*6;//总个数
NSInteger linespace = 4;//间隔宽度
NSInteger checktype = 0;//答题类型0全部假名。1五十音
NSInteger checkProgress = 0;//答题进度
@implementation CheckViewController{
    UICollectionView *checkCollectionView;
    NSMutableArray *soundarray;
    NSIndexPath *lastpath;
    UIProgressView *progressView;
    UIImageView *imageView;
    UILabel *scuuesslable;
}


- (void)viewDidLoad {
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"自测";
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
    NSInteger count = sqrt(checkcount);
    CGFloat side = (self.view.frame.size.width - linespace*(count - 1))/count;
    CGFloat starty = ((self.view.frame.size.height-StartY-TabBarHeight)-(side*count+(count-1)*linespace))/2;
    checkCollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0,StartY+starty,self.view.frame.size.width,self.view.frame.size.height-StartY-TabBarHeight) collectionViewLayout:flowLayout];
    [self setAutomaticallyAdjustsScrollViewInsets:NO];
    checkCollectionView.dataSource = self;
    checkCollectionView.delegate = self;
    [checkCollectionView registerClass:[CheckCell class] forCellWithReuseIdentifier:@"cell"];
    checkCollectionView.backgroundColor = [UIColor whiteColor];


    [self.view addSubview:checkCollectionView];
    UIButton *refresh = [UIButton buttonWithType:UIButtonTypeSystem];
    refresh.frame = CGRectMake(self.view.frame.size.width - 80, StartY+10, 45, 30);
    refresh.backgroundColor = [UIColor redColor];
    [refresh setTitle:@"刷新" forState:UIControlStateNormal];
    [refresh addTarget:self action:@selector(refresh) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:refresh];
    UISegmentedControl *segmentedControl = [[UISegmentedControl alloc] initWithItems:@[@"全部",@"五十音"]];
    segmentedControl.frame = CGRectMake(20, StartY+10, 100, 30);
    progressView = [[UIProgressView alloc] initWithFrame:CGRectMake(self.view.frame.size.width/6, segmentedControl.frame.origin.y+segmentedControl.frame.size.height+20, self.view.frame.size.width/3*2, 10)];
    [self.view addSubview:progressView];
    [segmentedControl addTarget:self action:@selector(onSegClick:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:segmentedControl];
    checktype = [self getIntConfig:@"checktype"];
    segmentedControl.selectedSegmentIndex = checktype;
    [self makedata:checktype];

    imageView = [[UIImageView alloc] initWithFrame:CGRectMake((self.view.frame.size.width-200)/2, progressView.frame.origin.y+30, 200, 200)];
    CGSize size = [@"恭喜你！获得ssr成就！" sizeWithFont:[UIFont systemFontOfSize:18]];
    scuuesslable = [[UILabel alloc] initWithFrame:CGRectMake((self.view.frame.size.width-size.width)/2, imageView.frame.origin.y+imageView.frame.size.height+20, size.width, size.height)];
    scuuesslable.text = @"恭喜你！获得ssr成就！";
    scuuesslable.font = [UIFont systemFontOfSize:18];
    scuuesslable.textColor = [UIColor redColor];
    imageView.tag = 110;
    lastpath = nil;

}

-(void)onSegClick:(UISegmentedControl *)control{
    checktype = control.selectedSegmentIndex;
    [self saveIntConf:checktype key:@"checktype"];
    [self refresh];
}
-(void)refresh{
    [self makedata:checktype];
    lastpath = nil;
    [checkCollectionView reloadData];
    checkProgress = 0;
    [progressView setProgress:0 animated:YES];
    [imageView removeFromSuperview];
    [scuuesslable removeFromSuperview];
    checkCollectionView.hidden = NO;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return soundarray.count;
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CheckCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    SoundBean *bean = [soundarray objectAtIndex:indexPath.row];
    if (bean.checkState){
        [cell setCheckState:StateRight];
    } else{
        cell.title.text = bean.checksound;
        [cell setCheckState:StateNormal];
    }
    return cell;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    CheckCell *cell = [collectionView cellForItemAtIndexPath:indexPath];
    SoundBean *bean = [soundarray objectAtIndex:indexPath.row];
    if (bean.checkState){
        return;
    }
    if (lastpath){
        if (lastpath.section == indexPath.section&&lastpath.row == indexPath.row){
            [cell setCheckState:StateNormal];
            lastpath = nil;
        } else{
            NSString *lasttitle = ((CheckCell *)[collectionView cellForItemAtIndexPath:lastpath]).title.text;
            NSString *nowtitle = ((CheckCell *)[collectionView cellForItemAtIndexPath:indexPath]).title.text;
            SoundBean *nowbean = [soundarray objectAtIndex:indexPath.row];
            SoundBean *lastbean = [soundarray objectAtIndex:lastpath.row];
            if ([lasttitle isEqualToString:nowbean.pingjia] || [lasttitle isEqualToString:nowbean.pianjia]){
                nowbean.checkState = YES;
                lastbean.checkState = YES;
                [soundarray removeObjectAtIndex:indexPath.row];
                [soundarray insertObject:nowbean atIndex:indexPath.row];
                [soundarray removeObjectAtIndex:lastpath.row];
                [soundarray insertObject:lastbean atIndex:lastpath.row];

                lastpath = nil;
                [checkCollectionView reloadData];
                [Toast show:@"答对了！"];
                checkProgress++;
                [progressView setProgress:checkProgress*2*1.0/checkcount animated:YES];
                if (checkProgress*2 == checkcount){
                    [self.view addSubview:imageView];
                    [self.view bringSubviewToFront:imageView];
                    [self.view addSubview:scuuesslable];
                    [HebeNetWork loadImage:imageView imageurl:@"http://www.ptbus.com/static/templet/700805/images/meitu/img5.jpg"];
                    [imageView setContentMode:UIViewContentModeScaleAspectFit];
                    checkCollectionView.hidden = YES;
                }
            } else{
                [((CheckCell *) [collectionView cellForItemAtIndexPath:indexPath]) setCheckState:StateNormal];
                [((CheckCell *) [collectionView cellForItemAtIndexPath:lastpath]) setCheckState:StateNormal];
                lastpath = nil;
                [Toast show:@"错了错了！"];
            }
        }
    } else{
        lastpath = indexPath;
        [cell setCheckState:StateCliked];
    }
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSInteger count = sqrt(checkcount);
    CGFloat side = (checkCollectionView.frame.size.width - linespace*(count - 1))/count;
    return CGSizeMake(side, side);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return linespace;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return linespace;
}


-(void)makedata:(NSInteger) type{
    if (soundarray){
        soundarray = nil;
    }
    soundarray = [[NSMutableArray alloc] init];
    soundarray = [Utils getTypeArray:type arraycount:checkcount];
    NSLog(@"soundarray.count = %d",soundarray.count);
//    for (SoundBean *temp in soundarray) {
//        NSLog(temp.description);
//    }
}

@end
