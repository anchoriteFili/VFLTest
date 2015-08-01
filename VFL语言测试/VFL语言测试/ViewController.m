//
//  ViewController.m
//  VFL语言测试
//
//  Created by lanou3g on 15-8-1.
//  Copyright (c) 2015年 hehe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    1.添加两个空间到父控件上
//    1.1添加蓝色view
    UIView *blueView = [[UIView alloc] init];
    blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueView];
    
//    1.2添加红色view
    UIView *redView = [[UIView alloc] init];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    
//    2.禁用auturezing
    blueView.translatesAutoresizingMaskIntoConstraints = NO;
    redView.translatesAutoresizingMaskIntoConstraints = NO;
    
//    3.添加约束
    /**
     lFormat:VFL语句
     options:对齐方式
     metrics:VFL语句中用到的变量值
     views:VFL语句中用到的控件
     */
//    设置蓝色View距离左边和右边有20的距离 相当于设置了x和宽度
    NSArray *blueViewH = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[blueView]-20-|" options:0 metrics:nil views:@{@"blueView":blueView}];
    [self.view addConstraints:blueViewH];
    
//    设置蓝色view距离顶部20的距离,并且高度等于50 相当于设置了y和高度
//    设置红色view距离蓝色底部有20的间距,并且红色view的高度等于蓝色View的高度 y和高度
//    并且设置红色和蓝色右对齐
    NSArray *blueViewV = [NSLayoutConstraint constraintsWithVisualFormat:@"V:|-20-[blueView(50)]" options:0 metrics:nil views:@{@"blueView":blueView}];
    [self.view addConstraints:blueViewV];
    
//    在VFL语句中是不支持乘除法的
    NSArray *redViewH = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[redView(==blueView)]" options:0 metrics:nil views:@{@"blueView":blueView,@"redView":redView}];
    [self.view addConstraints:redViewH];
    
    
    
    
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
