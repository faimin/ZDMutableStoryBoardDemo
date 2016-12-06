//
//  TwoController2.m
//  ZDMutableStoryBoardDemo
//
//  Created by 符现超 on 16/9/24.
//  Copyright © 2016年 Fate.D.Bourne. All rights reserved.
//

#import "TwoController2.h"

@interface TwoController2 ()

@end

@implementation TwoController2

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 需要注意的是:
// 这个方法的返回值必须是`IBAction`，参数必须是`UIStoryboardSegue`。
- (IBAction)backUnwindSegue:(UIStoryboardSegue *)segue {
    NSLog(@"%@", segue.destinationViewController);
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
