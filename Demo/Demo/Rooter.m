//
//  Rooter.m
//  Demo
//
//  Created by 符现超 on 2016/12/6.
//  Copyright © 2016年 Zero.D.Saber. All rights reserved.
//

#import "Rooter.h"

__kindof UINavigationController *RootNavigationController() {
    UINavigationController *rootNav = (UINavigationController *)[[UIApplication sharedApplication].delegate window].rootViewController;
    return rootNav;
}

__kindof UIViewController *WrapedController(NSString *identifier, BOOL barHidden) {
    UIViewController *vc = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:identifier];
    
    UIViewController *containerController = [[UIViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
    nav.interactivePopGestureRecognizer.enabled = NO;
    if (barHidden) {
        [nav setNavigationBarHidden:YES animated:NO];
    }
    
    UIBarButtonItem *leftItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:nil action:nil];
    vc.navigationItem.leftBarButtonItem = leftItem;
    
    [containerController addChildViewController:nav];
    [nav didMoveToParentViewController:containerController];
    nav.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    nav.view.frame = containerController.view.bounds;
    [containerController.view addSubview:nav.view];
    
    return containerController;
}

void backAction() {
    
}

@interface Rooter ()

@end

@implementation Rooter

+ (void)pushToController:(NSString *)identifier {
    [self pushToController:identifier hiddenBar:NO];
}

+ (void)pushToController:(NSString *)identifier hiddenBar:(BOOL)yesOrNo {
    [RootNavigationController() showViewController:WrapedController(identifier, NO) sender:self];
}

@end

