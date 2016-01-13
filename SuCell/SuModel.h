//
//  SuModel.h
//  SuCell
//
//  Created by abel on 16/1/13.
//  Copyright © 2016年 abel. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SuModel : NSObject

@property (nonatomic,copy) NSString *logo; //图片
@property (nonatomic,copy) NSString *title; //标题
@property (nonatomic,copy) NSString *intro; //文字

-(instancetype)initWithDict:(NSDictionary *)dict; //初始化字典
+(instancetype)suModelWithDict:(NSDictionary *)dict; //初始化模型字典

@end
