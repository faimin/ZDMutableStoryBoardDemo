## 框架探究
为了解决一个控制器界面对应一种导航栏颜色的问题，尝试在`push`到`controller`时，把`controller`包装成一个`containerController -> navigationController -> controller`层级的结构，一个控制器对应一个导航控制器，这样就可以单独设置各自的导航控制器。

笔者比较推荐的框架层级结构：

```
NavigationController（导航栏隐藏） -> TabbarController -> [ NavigationController -> ViewController ]
```

标签控制器可以自己根据控制器管理控制器的思路仿写一个，或者直接用别人开源的。

> Note: 只有入栈的控制器才能给它的导航控制器设置`title`，哪怕是入栈控制器的子控制器也设置不了，切记！

### 推荐的开源Repo
- [RTRootNavigationController](https://github.com/rickytan/RTRootNavigationController)

- [RDVTabBarController](https://github.com/robbdimitrov/RDVTabBarController)

- [KMNavigationBarTransition](https://github.com/MoZhouqi/KMNavigationBarTransition)

- [RainbowNavigation](https://github.com/DanisFabric/RainbowNavigation)


