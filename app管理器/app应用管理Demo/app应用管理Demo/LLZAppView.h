//
//  LLZAppView.h
//  app应用管理Demo
//
//  Created by locklight on 17/1/2.
//  Copyright © 2017年 LockLight. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LLZAppModel;

@interface LLZAppView : UIView

@property (nonatomic ,strong) LLZAppModel *app;

+ (instancetype)LLZAppViewWithXib;
@end
