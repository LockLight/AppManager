//
//  appModel.m
//  app管理器
//
//  Created by locklight on 16/12/30.
//  Copyright © 2016年 LockLight. All rights reserved.
//

#import "appModel.h"

@implementation appModel

+(instancetype)appModelWithDict:(NSDictionary *)dict{
    appModel *app = [[appModel alloc]init];
    [app setValuesForKeysWithDictionary:dict];
    return app;
}
@end
