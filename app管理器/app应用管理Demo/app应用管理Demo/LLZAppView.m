//
//  LLZAppView.m
//  app应用管理Demo
//
//  Created by locklight on 17/1/2.
//  Copyright © 2017年 LockLight. All rights reserved.
//

#import "LLZAppView.h"
#import "LLZAppModel.h"

@interface LLZAppView ()
//图片控件
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
//图片label
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

@implementation LLZAppView

- (void)setApp:(LLZAppModel *)appModel{
    _app = appModel;
    
    self.imageView.image = [UIImage imageNamed:appModel.icon];
    self.nameLabel.text = appModel.name;
}

+ (instancetype)LLZAppViewWithXib{
    UINib *nib = [UINib nibWithNibName:@"LLZAppView" bundle:nil];
    LLZAppView *appView = [[nib instantiateWithOwner:nil options:nil] firstObject];
    return appView;
}
@end
