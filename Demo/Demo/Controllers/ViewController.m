//
//  ViewController.m
//  Demo
//
//  Created by 符现超 on 2016/12/6.
//  Copyright © 2016年 Zero.D.Saber. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIGestureRecognizerDelegate>

@property (nonatomic, weak) id originDelegate;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    UINavigationController *rootNav = (UINavigationController *)[[UIApplication sharedApplication].delegate window].rootViewController;
    self.originDelegate = rootNav.interactivePopGestureRecognizer.delegate;
    rootNav.interactivePopGestureRecognizer.delegate = self;
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    UINavigationController *rootNav = (UINavigationController *)[[UIApplication sharedApplication].delegate window].rootViewController;
    self.originDelegate = rootNav.interactivePopGestureRecognizer.delegate;
    rootNav.interactivePopGestureRecognizer.delegate = self.originDelegate;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)popBack:(id)sender {
    UINavigationController *rootNav = (UINavigationController *)[[UIApplication sharedApplication].delegate window].rootViewController;
    [rootNav popViewControllerAnimated:YES];
}

@end
