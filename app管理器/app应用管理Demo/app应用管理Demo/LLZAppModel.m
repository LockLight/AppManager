//
//  LLZAppModel.m
//  app应用管理Demo
//
//  Created by locklight on 17/1/2.
//  Copyright © 2017年 LockLight. All rights reserved.
//

#import "LLZAppModel.h"

@implementation LLZAppModel

+ (instancetype)LLZAppModelWithDict:(NSDictionary *)dict{
    //创建模型对象
    LLZAppModel *appModel = [[LLZAppModel alloc]init];
    //通过KVO 给模型中的属性根据字典对应关系赋值
    [appModel setValuesForKeysWithDictionary:dict];
    return appModel;
}

@end
