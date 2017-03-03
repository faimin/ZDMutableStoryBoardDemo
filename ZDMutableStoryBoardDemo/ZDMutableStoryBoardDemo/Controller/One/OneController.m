//
//  OneController.m
//  ZDMutableStoryBoardDemo
//
//  Created by 符现超 on 16/1/10.
//  Copyright © 2016年 Zero.D.Saber. All rights reserved.
//

#import "OneController.h"
#import "MainViewController.h"
#import "TestViewController.h"

@interface OneController ()

@end

@implementation OneController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"One";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.rdv_tabBarController setTabBarHidden:NO animated:YES];
}

- (IBAction)pushToThree:(UIButton *)sender {
    RDVTabBarController *rootVC = self.rdv_tabBarController;
    rootVC.selectedIndex = 2;
    UINavigationController *selectedNav = (UINavigationController *)rootVC.selectedViewController;

    TestViewController *testVC = [[TestViewController alloc] init];
    testVC.view.backgroundColor = [UIColor cyanColor];
    
    [selectedNav showViewController:testVC sender:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
