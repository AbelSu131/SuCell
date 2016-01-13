//
//  SuModel.m
//  SuCell
//
//  Created by abel on 16/1/13.
//  Copyright © 2016年 abel. All rights reserved.
//

#import "SuModel.h"

@implementation SuModel

-(instancetype)initWithDict:(NSDictionary *)dict{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+(instancetype)suModelWithDict:(NSDictionary *)dict{
    return [[self alloc]initWithDict:dict];
}

@end
