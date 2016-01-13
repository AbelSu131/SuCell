//
//  SuCollectionViewCell.h
//  SuCell
//
//  Created by abel on 16/1/13.
//  Copyright © 2016年 abel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SuModel.h"

@interface SuCollectionViewCell : UICollectionViewCell
@property (nonatomic,weak) UIImageView *imageView;
@property (nonatomic,strong) SuModel *suModel;

@end
