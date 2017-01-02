//
//  AppView.m
//  app管理器
//
//  Created by locklight on 16/12/30.
//  Copyright © 2016年 LockLight. All rights reserved.
//

#import "AppView.h"
#import "appModel.h"

@interface AppView()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;

@end

@implementation AppView

- (void)setApp:(appModel *)appModel{
    _app = appModel;
    
    self.imageView.image = [UIImage imageNamed:appModel.icon];
    self.nameLabel.text = appModel.name;
}

+ (instancetype)appViewWithXib{
    UINib *nib = [UINib nibWithNibName:@"appView" bundle:nil];
    AppView *appView = [[nib instantiateWithOwner:nil options:nil] firstObject];
    return appView;
}
@end
