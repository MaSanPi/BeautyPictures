//
//  MBNavigationController.m
//  BeautyPictures
//
//  Created by 马波 on 2018/9/14.
//  Copyright © 2018年 MB. All rights reserved.
//

#import "MBNavigationController.h"

@interface MBNavigationController ()

@end

@implementation MBNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationBar.tintColor = [UIColor whiteColor];
    self.navigationBar.barTintColor = [UIColor mb_colorWithHexString:@"ff0036"];
    
    self.navigationBar.translucent=NO;
    
   
    
    self.navigationBar.titleTextAttributes = @{NSFontAttributeName : [UIFont boldSystemFontOfSize:18],
                                               NSForegroundColorAttributeName : [UIColor whiteColor]
                                               };
    self.navigationBar.shadowImage = [UIImage new];
}

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    
    // 左上角的返回键
    // 注意：第一个控制器不需要返回键
    // if不是第一个push进来的子控制器{
    if (self.childViewControllers.count >= 1) {
        // 左上角的返回按钮
        UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
        backButton.mb_size = CGSizeMake(44, 44);
        [backButton setImage:[UIImage imageNamed:@"backNormal"] forState:UIControlStateNormal];
        //        [backButton setImage:[UIImage imageNamed:@"backSelect"] forState:UIControlStateHighlighted];
        // 让按钮内部的所有内容左对齐
        backButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        
        [backButton addTarget:self action:@selector(back:) forControlEvents:UIControlEventTouchUpInside];
        //        backButton.contentEdgeInsets = UIEdgeInsetsMake(0, -5, 0, 0); // 这里微调返回键的位置可以让它看上去和左边紧贴
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
        viewController.hidesBottomBarWhenPushed = YES; // 隐藏底部的工具条
    }
    // super的push方法一定要写到最后面
    // 一旦调用super的pushViewController方法,就会创建子控制器viewController的view
    // 也就会调用viewController的viewDidLoad方法
    [super pushViewController:viewController animated:YES];
}

- (void)back:(UIViewController *)vc
{
    [self popViewControllerAnimated:YES];// 这里不用写self.navigationController，因为它自己就是导航控制器
}
@end
