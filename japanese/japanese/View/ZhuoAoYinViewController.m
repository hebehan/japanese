//
//  QingYinViewController.m
//  japanese
//
//  Created by Hebe on 2016/10/27.
//  Copyright © 2016年 Hebe. All rights reserved.
//

#import "SoundCell.h"
#import "Utils.h"
#import "SoundBean.h"
#import "PeekSoundPreViewController.h"
#import "ZhuoAoYinViewController.h"

@interface ZhuoAoYinViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,UIViewControllerPreviewingDelegate>

@end

@implementation ZhuoAoYinViewController{
    UICollectionView *jpCollectionView;
    CGFloat linespace;
    NSMutableArray *soundArray;
}

- (void)viewDidLoad {
    self.title = @"日语50音";
    linespace = 2.0f;
    UICollectionViewFlowLayout *viewFlowLayout = [[UICollectionViewFlowLayout alloc] init];
    [viewFlowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
    jpCollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0,0,self.view.frame.size.width,self.view.frame.size.height-StartY) collectionViewLayout:viewFlowLayout];
    [self setAutomaticallyAdjustsScrollViewInsets:NO];
    jpCollectionView.delegate = self;
    jpCollectionView.dataSource = self;
    [jpCollectionView registerClass:[SoundCell class] forCellWithReuseIdentifier:@"cell"];
    soundArray = Utils.getZAYSoundArray;
    jpCollectionView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:jpCollectionView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [soundArray count];
}

- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    SoundCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    SoundBean *bean = [soundArray objectAtIndex:indexPath.row];
    cell.pingjia.text = bean.pingjia;
    cell.pianjia.text = bean.pianjia;
    cell.luoma.text = bean.luoma;
    if (self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable) {//判断3Dtouch是否可用
        [self registerForPreviewingWithDelegate:self sourceView:cell];
    }
    return cell;
}

- (UIViewController *)previewingContext:(id <UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location {
        if ([self.presentedViewController isKindOfClass:[PeekSoundPreViewController class]]){
            return nil;
        } else{
            PeekSoundPreViewController *peekSoundPreViewController = [[PeekSoundPreViewController alloc] init];
            NSLog(@"%@",NSStringFromCGPoint(location));
            NSIndexPath *path = [jpCollectionView indexPathForCell:[previewingContext sourceView]];
            NSLog(@"%@",path.description);
            peekSoundPreViewController.bean = [soundArray objectAtIndex:path.row];
            return peekSoundPreViewController;
        }
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    SoundBean *bean = [soundArray objectAtIndex:indexPath.row];
    NSLog(@"%@",indexPath.description);
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {

    return CGSizeMake((self.view.frame.size.width-linespace*2)/3,(self.view.frame.size.width-linespace*4)/5);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return linespace;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return linespace;
}

@end
