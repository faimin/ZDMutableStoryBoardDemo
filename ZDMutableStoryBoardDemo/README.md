# MutableStoryBoard
###code

```objc
#pragma mark - Setting
- (void)settingViewControllers
{
    UIViewController *oneVC = [self controllerWithClass:NSClassFromString(@"OneController") storyboardName:@"One"];
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
```
