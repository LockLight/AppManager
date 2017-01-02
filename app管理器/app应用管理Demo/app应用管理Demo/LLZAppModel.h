//
//  LLZAppModel.h
//  app应用管理Demo
//
//  Created by locklight on 17/1/2.
//  Copyright © 2017年 LockLight. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LLZAppModel : UIView
//图标模型
@property (nonatomic, copy) NSString *icon;
//图标label模型
@property (nonatomic, copy) NSString *name;

+ (instancetype)LLZAppModelWithDict:(NSDictionary *)dict;
@end
