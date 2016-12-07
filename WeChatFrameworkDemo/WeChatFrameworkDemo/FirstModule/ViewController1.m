//
//  ViewController.m
//  WeChatFrameworkDemo
//
//  Created by 符现超 on 2016/12/7.
//  Copyright © 2016年 Zero.D.Saber. All rights reserved.
//

#import "ViewController1.h"

@interface ViewController1 ()

@end

@implementation ViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    /*
    self.parentViewController.navigationItem.titleView = ({
        UILabel *label = [[UILabel alloc] initWithFrame:(CGRect){0, 0, 50, 20}];
        label.backgroundColor = [UIColor yellowColor];
        label.text = @"title 还不出现吗？";
        label.font = [UIFont boldSystemFontOfSize:14.f];
        label.textAlignment = NSTextAlignmentCenter;
        label;
    });
     */
    self.parentViewController.navigationItem.title = @"第一模块";
}



@end
