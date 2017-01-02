//
//  ViewController.m
//  app管理器
//
//  Created by locklight on 16/12/27.
//  Copyright © 2016年 LockLight. All rights reserved.
//

#import "ViewController.h"
#import "appModel.h"
#import "appView.h"

@interface ViewController ()

@end

@implementation ViewController{
    //定义保存数据的数组
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
    //设置左右间距
    CGFloat leftMargin = (self.view.bounds.size.width - (appW * colCount) - (colCount - 1) * margin) * 0.5;
    //设置顶部间距
    CGFloat topMargin = leftMargin;
    for (NSInteger i = 0; i < _appData.count; i++) {
        //通过构造方法实例化控件
        AppView *appView = [AppView appViewWithXib];
        //取出数组内的字典模型给app的属性赋值
        appModel *app = _appData[i];
        //将模型对象赋值给appView的属性
        appView.app = app;
        
        //列号:i % 列数
        NSInteger col = i % colCount;
        //子视图的X
        CGFloat appX =  leftMargin + (appW + margin) * col;
        //行号:i / 列数
        NSInteger row = i / colCount;
        //子视图的Y
        CGFloat appY = topMargin + (appH + margin) * row;
        //设置子视图frame
        appView.frame = CGRectMake(appX, appY, appW, appH);
        //添加子视图
        [self.view addSubview:appView];
    }
    
}


- (NSArray *)loadData{
    //获取app包内容中的plist文件
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"apps.plist" withExtension:nil];
    //读取指定文件存入数组
    NSArray *dictArr = [NSArray arrayWithContentsOfURL:url];
    //创建可变数组
    NSMutableArray *arrM = [NSMutableArray array];
    //循环遍历字典,将字典模型将其存入数组
    for (NSDictionary *dict in dictArr) {
        appModel *app = [appModel appModelWithDict:dict];
        [arrM addObject:app];
    }
    return arrM;
}


@end
