//
//  AppView.h
//  app管理器
//
//  Created by locklight on 16/12/30.
//  Copyright © 2016年 LockLight. All rights reserved.
//

#import <UIKit/UIKit.h>
@class appModel;

@interface AppView : UIView
//定义属性接收数据
@property (nonatomic,strong) appModel *app;

+ (instancetype)appViewWithXib;
@end
