//
//  ThreeController.m
//  ZDMutableStoryBoardDemo
//
//  Created by 符现超 on 16/1/10.
//  Copyright © 2016年 Zero.D.Saber. All rights reserved.
//

#import "ThreeController.h"
#import <RDVTabBarController/RDVTabBarController.h>

@interface ThreeController ()

@end

@implementation ThreeController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.title = @"Three";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.rdv_tabBarController setTabBarHidden:NO animated:YES];
}

//- (void)viewWillDisappear:(BOOL)animated {
//    [super viewWillDisappear:animated];
//    [self.rdv_tabBarController setTabBarHidden:NO animated:YES];
//}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
