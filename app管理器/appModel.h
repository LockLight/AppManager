//
//  appModel.h
//  app管理器
//
//  Created by locklight on 16/12/30.
//  Copyright © 2016年 LockLight. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface appModel : NSObject
@property (nonatomic,copy) NSString *icon;
@property (nonatomic,copy) NSString *name;

+(instancetype)appModelWithDict:(NSDictionary *)dict;
@end
