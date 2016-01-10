//
//  ViewController.m
//  ZDMutableStoryBoardDemo
//
//  Created by 符现超 on 16/1/10.
//  Copyright © 2016年 Fate.D.Bourne. All rights reserved.
//

#import "MainViewController.h"


@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self settingViewControllers];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Setting
- (void)settingViewControllers
{
    UIViewController *oneVC = [self controllerWithClass:NSClassFromString(@"OneController") storyboardName:@"One"];
//    UIViewController *twoVC = ({
//        UIStoryboard *stroyboard = [UIStoryboard storyboardWithName:@"Two" bundle:nil];
//        UIViewController *nav = [stroyboard instantiateInitialViewController];
//        nav;
//    });
    UIViewController *twoVC = [self controllerWithClass:NSClassFromString(@"TwoController") storyboardName:@"Two"];
    UIViewController *threeVC = [self controllerWithClass:NSClassFromString(@"ThreeController") storyboardName:@"Three"];
    UIViewController *fourVC = [self controllerWithClass:NSClassFromString(@"FourController") storyboardName:@"Four"];
    
    self.viewControllers = @[oneVC, twoVC, threeVC, fourVC];
}

- (nullable __kindof UIViewController *)controllerWithClass:(Class)class storyboardName:(NSString *)stroyboardName {
    if (!stroyboardName || stroyboardName.length == 0) {
        return nil;
    }
    UIViewController *viewController;
    UIStoryboard *stroyboard = [UIStoryboard storyboardWithName:stroyboardName bundle:nil];
    if (stroyboard) {
        viewController = [stroyboard instantiateViewControllerWithIdentifier:NSStringFromClass(class)];
    }
    return viewController;
}

@end
