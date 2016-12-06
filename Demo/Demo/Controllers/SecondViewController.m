//
//  SecondViewController.m
//  Demo
//
//  Created by 符现超 on 2016/12/6.
//  Copyright © 2016年 Zero.D.Saber. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"
#import "Rooter.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pushToViewController:(id)sender {
    [Rooter pushToController:NSStringFromClass([ViewController class])];
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
