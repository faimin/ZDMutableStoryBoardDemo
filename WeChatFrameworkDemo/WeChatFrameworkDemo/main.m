//
//  main.m
//  WeChatFrameworkDemo
//
//  Created by 符现超 on 2016/12/7.
//  Copyright © 2016年 Zero.D.Saber. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        setenv("OS_ACTIVITY_MODE","DISABLE",1);
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
