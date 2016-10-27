//
//  MainViewController.m
//  japanese
//
//  Created by Hebe on 2016/10/27.
//  Copyright © 2016年 Hebe. All rights reserved.
//

#import "MainViewController.h"
#import "SoundCell.h"
#import "Utils.h"
#import "SoundBean.h"

@interface MainViewController ()<UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout>

@end

@implementation MainViewController{
    UICollectionView *jpCollectionView;
    CGFloat linespace;
    NSMutableArray *soundArray;
}

- (void)viewDidLoad {
    self.title = @"日语50音";
    linespace = 2.0f;
    UICollectionViewFlowLayout *viewFlowLayout = [[UICollectionViewFlowLayout alloc] init];
    [viewFlowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
    jpCollectionView = [[UICollectionView alloc] initWithFrame:CGRectMake(0,StartY,self.view.frame.size.width,self.view.frame.size.height-StartY) collectionViewLayout:viewFlowLayout];
    [self setAutomaticallyAdjustsScrollViewInsets:NO];
    jpCollectionView.delegate = self;
    jpCollectionView.dataSource = self;
    [jpCollectionView registerClass:[SoundCell class] forCellWithReuseIdentifier:@"cell"];
    soundArray = Utils.getSoundArray;
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
    return cell;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    SoundBean *bean = [soundArray objectAtIndex:indexPath.row];
    NSLog(@"%@",bean.description);
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {

    return CGSizeMake((self.view.frame.size.width-linespace*4)/5,(self.view.frame.size.width-linespace*4)/5);
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section {
    return linespace;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return linespace;
}

@end
