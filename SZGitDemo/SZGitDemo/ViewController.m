//
//  ViewController.m
//  SZGitDemo
//
//  Created by 孙卓 on 16/4/3.
//  Copyright (c) 2016年 lbs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIView *subview = [[UIView alloc] init];
//    subview.backgroundColor = [UIColor redColor];
//    [self.view addSubview:subview];
//    [subview mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.equalTo(self.view).offset(50);
//    }];
    
    UIView *aView = [[UIView alloc] init];
    aView.backgroundColor = [UIColor yellowColor];
    aView.layer.cornerRadius = 100;
    aView.layer.masksToBounds = YES;
    [self.view addSubview:aView];
    
//    [aView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.top.trailing.equalTo(self.view);
//        make.height.width.equalTo(@200);
//
//    }];

    //填充整个view
//    [aView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.equalTo(self.view);
//    }];
    
    [aView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.equalTo(@200);
        make.centerX.equalTo(self.view.mas_centerX);
        make.centerY.equalTo(self.view.mas_centerY);
    }];

    UIView *bView = [[UIView alloc] init];
    bView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:bView];
//    [bView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.leading.equalTo(self.view).offset(15);
//        make.trailing.equalTo(self.view).offset(-15);
////        make.top.equalTo(aView.mas_bottom).offset(40);
//        make.bottom.equalTo(aView.mas_top).offset(-30);
//        make.height.equalTo(@50);
//    }];
    [bView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.leading.equalTo(self.view).offset(15);
        make.trailing.equalTo(aView.mas_leading).offset(-15);
        make.top.equalTo(aView.mas_top);//平行的
        make.bottom.equalTo(aView.mas_bottom);//平行的
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
