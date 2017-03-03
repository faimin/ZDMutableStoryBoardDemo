//
//  ViewController.m
//  ZDMutableStoryBoardDemo
//
//  Created by 符现超 on 16/1/10.
//  Copyright © 2016年 Zero.D.Saber. All rights reserved.
//

#import "MainViewController.h"
#import <RDVTabBarItem.h>
#import <RTRootNavigationController/RTRootNavigationController.h>

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
    UIViewController *oneVC = [self navgationControllerWithStoryboardID:@"OneNav"
                                                         storyboardName:@"One"];
    UIViewController *twoVC = [self navgationControllerWithStoryboardID:@"TwoNav"
                                                         storyboardName:@"Two"];
    UIViewController *threeVC = [self navgationControllerWithStoryboardID:@"ThreeNav"
                                                           storyboardName:@"Three"];
    UIViewController *fourVC = [self controllerWithClass:NSClassFromString(@"FourController")
                                          storyboardName:@"Four"];
    //self.viewControllers = @[oneVC, twoVC, threeVC, fourVC];
    
    // 因为前三个获取到的都是导航控制器视图，所以不用包装，只需要把类改一下
    RTContainerNavigationController *nav4 = [[RTContainerNavigationController alloc] initWithRootViewController:fourVC];
    
    self.viewControllers = @[oneVC, twoVC, threeVC, nav4];
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

- (nullable __kindof UIViewController *)navgationControllerWithStoryboardID:(NSString *)storyboardId storyboardName:(NSString *)stroyboardName {
    if (!stroyboardName || stroyboardName.length == 0) {
        return nil;
    }
    UIViewController *viewController;
    UIStoryboard *stroyboard = [UIStoryboard storyboardWithName:stroyboardName bundle:nil];
    if (stroyboard) {
        viewController = [stroyboard instantiateViewControllerWithIdentifier:storyboardId];
    }
    return viewController;
}

#pragma mark - Getter

- (BOOL)isTabBarHidden {
    return NO;
}

@end
