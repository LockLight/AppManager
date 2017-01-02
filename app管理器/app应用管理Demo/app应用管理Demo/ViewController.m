//
//  ViewController.m
//  app应用管理Demo
//
//  Created by locklight on 17/1/2.
//  Copyright © 2017年 LockLight. All rights reserved.
//

#import "ViewController.h"
#import "LLZAppModel.h"
#import "LLZAppView.h"

@interface ViewController ()

@end

@implementation ViewController{
    //定义保持app数据的数组
    NSArray *_appData;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //加载数据
    _appData = [self loadData];
    //设置子视图的宽高
    CGFloat appW = 100;
    CGFloat appH = 120;
    //设置子视图的间距
    CGFloat margin = 10;
    //设置子视图的列数
    NSInteger colCount = 3;
    //设置子视图的左间距
    CGFloat leftMargin = (self.view.bounds.size.width - (appW * colCount)- (colCount - 1) * margin) *0.5;
    //设置子视图的上间距
    CGFloat topMargin =  leftMargin;
    //循环创建imageView视图
    for (NSInteger i = 0; i < _appData.count; i++) {
        //通过构造方法实例化视图控件
        LLZAppView *appView = [LLZAppView LLZAppViewWithXib];
        //取出数组内的字典模型数据给app的属性赋值
        LLZAppModel *appModel = _appData[i];
        //将app属性传给视图对应的视图控件
        appView.app = appModel;
        
        
        //列号: i % 列数
        NSInteger col =  i % colCount;
        //子视图的X
        CGFloat appX = leftMargin + (appW + margin) * col;
        //行号: i / 列数
        NSInteger row =  i / colCount;
        //子视图的Y
        CGFloat appY = topMargin + (appH + margin) * row;
        //设置frame
        appView.frame = CGRectMake(appX, appY, appW, appH);
        //添加子视图
        [self.view addSubview:appView];
    }
}

- (NSArray *)loadData{
    //获取包内容plist文件
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"apps.list" withExtension:nil];
    //读取路径文件存入数组
    NSArray *dictArr = [NSArray arrayWithContentsOfURL:url];
    //创建可变数组
    NSMutableArray *arrM = [NSMutableArray array];
    //循环遍历字典,将字典模型存入可变数组
    for (NSDictionary *dict in dictArr) {
        LLZAppModel *appModel = [LLZAppModel LLZAppModelWithDict:dict];
        [arrM addObject:appModel];
    }
    return arrM.copy;
}


@end
