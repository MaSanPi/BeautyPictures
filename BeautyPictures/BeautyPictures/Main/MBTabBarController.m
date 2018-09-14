//
//  MBTableViewController.m
//  BeautyPictures
//
//  Created by 马波 on 2018/9/14.
//  Copyright © 2018年 MB. All rights reserved.
//

#import "MBTabBarController.h"
#import "MBNavigationController.h"
#import "MediaVc.h"

@interface MBTabBarController ()

@end

@implementation MBTabBarController

- (void)viewDidLoad
{
    [super viewDidLoad];
  
    // 初始化所有的子控制器
    [self setupAllChildViewControllers];
    
   
    
}







/**
 *  初始化所有的子控制器
 */
- (void)setupAllChildViewControllers
{
    // 1.动态
    MediaVc *mediaVc = [[MediaVc alloc] init];
    mediaVc.title=@"媒体库";
    //    self.mineBnt=
    [self setupChildViewController:mediaVc title:@"媒体库" selectedImageName:@"tabar_media_selete" tag:100 defaulImage:@"tabar_media_normal"];
    
   
    
    
    
}

/**
 *  初始化一个子控制器
 *
 *  @param childVc           需要初始化的子控制器
 *  @param title             标题
 *  @param selectedImageName 选中的图标
 */
- (void)setupChildViewController:(UIViewController *)childVc title:(NSString *)title selectedImageName:(NSString *)selectedImageName tag:(NSInteger)tag defaulImage:(NSString *)defaulImage
{
    // 设置选中的图标
    UIImage *selectedImage = [UIImage imageNamed:selectedImageName];
    // 2.包装一个导航控制器
    MBNavigationController *nav = [[MBNavigationController alloc] init];
    [nav addChildViewController:childVc];
    nav.tabBarItem.image = [UIImage imageNamed:defaulImage];
    nav.tabBarItem.selectedImage =selectedImage;
    nav.tabBarItem.title = title;
    [nav.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor mb_colorWithHexString:@"999999"], NSForegroundColorAttributeName, nil] forState:UIControlStateNormal];
    [nav.tabBarItem setTitleTextAttributes:                                                         [NSDictionary dictionaryWithObjectsAndKeys:[UIColor mb_mainColor],NSForegroundColorAttributeName, nil]forState:UIControlStateSelected];
    nav.tabBarItem.tag=tag;
    [self addChildViewController:nav];
    
}




@end

