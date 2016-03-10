//
//  ViewController.m
//  ZDMutableStoryBoardDemo
//
//  Created by 符现超 on 16/1/10.
//  Copyright © 2016年 Fate.D.Bourne. All rights reserved.
//

#import "MainViewController.h"
#import <RDVTabBarItem.h>

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

@end
