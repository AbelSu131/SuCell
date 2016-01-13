//
//  SuCollectionViewCell.m
//  SuCell
//
//  Created by abel on 16/1/13.
//  Copyright © 2016年 abel. All rights reserved.
//

#import "SuCollectionViewCell.h"


#define kCellHeight 200
#define kScreenWidth [UIScreen mainScreen].bounds.size.width


@interface SuCollectionViewCell()

@property (nonatomic ,weak) UILabel *titleLabel; //标题
@property (nonatomic ,weak) UILabel *introLabel; //文字
@end


@implementation SuCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        UIImageView *imageView = [[UIImageView alloc]init];
        self.imageView = imageView;
        [self addSubview:imageView];
        
        //titleLabel标题
        UILabel *titleLabel = [[UILabel alloc]init];
        titleLabel.textAlignment = NSTextAlignmentCenter;//文字居中
        titleLabel.font = [UIFont boldSystemFontOfSize:22];//文字类型大小
        titleLabel.textColor = [UIColor whiteColor];
        self.titleLabel = titleLabel;
        [self addSubview:titleLabel];
        
        //introLabel文字
        UILabel *introLabel = [[UILabel alloc] init];
        introLabel.textAlignment = NSTextAlignmentCenter;
        introLabel.font = [UIFont systemFontOfSize:17];
        introLabel.textColor = [UIColor whiteColor];
        self.introLabel = introLabel;
        [self addSubview:introLabel];
        
        self.clipsToBounds = YES;
    }
    return self;
}

-(void)layoutSubviews{
    _titleLabel.frame = CGRectMake(0, 0, kScreenWidth, 22);
    _titleLabel.center = CGPointMake(kScreenWidth * 0.5, kCellHeight * 0.5);
    
    _introLabel.frame = CGRectMake(0, 0, kScreenWidth, 17);
    _introLabel.center = CGPointMake(kScreenWidth * 0.5, kCellHeight * 0.5 + 0.65*(22 +17));
}

-(void)setSuModel:(SuModel *)suModel{
    _suModel = suModel;
    NSString *imagePath = [[NSBundle mainBundle] pathForResource:suModel.logo ofType:@"jpg"];
    self.imageView.image = [[UIImage alloc] initWithContentsOfFile:imagePath];
    self.titleLabel.text = _suModel.title;
    self.introLabel.text = _suModel.intro;
}


@end
