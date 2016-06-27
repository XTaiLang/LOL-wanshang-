//
//  BaseTabBarController.m
//  简书:http://www.jianshu.com/users/c1bb6aa0e422
//
//  Created by HarrisHan on 15/7/26.
//  Copyright (c) 2015年 Lee. All rights reserved.
//

#import "BaseTabBarController.h"
#import "CoreStatus.h"

#import "PCH.h"


#import "DownloadViewController.h"

#import "Union_NewsViewController.h"

#import "Union_VideoViewController.h"

#import "Union_EncyViewController.h"

#import "Union_MyUnionViewController.h"

#import "VideoPlayerViewController.h"

#import "BaseTabBarController.h"


#import <CBZSplashView.h>

#import <MobClick.h>

#import <UMFeedback.h>
@interface BaseTabBarController ()

@end

@implementation BaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //联盟资讯
    
    Union_NewsViewController *UNVC = [[Union_NewsViewController alloc]init];
    
    UINavigationController *newsNC = [[UINavigationController alloc]initWithRootViewController:UNVC];
    
    //设置视图控制器
    
    UNVC.title = @"资讯";
    
    
    //设置导航控制器
    
    newsNC.tabBarItem.title = @"联盟资讯";
    
    newsNC.tabBarItem.image = [UIImage imageNamed:@"iconfont-news"];
    
    newsNC.navigationBar.translucent = NO;//不透明
    
    newsNC.navigationBar.barTintColor = MAINCOLOER;
    
    newsNC.navigationBar.barStyle=UIBarStyleBlackOpaque;
    
    
    //---------------------------------------------
    
    //视频直播
    
    Union_VideoViewController *UVVC = [[Union_VideoViewController alloc]init];
    
    UINavigationController *videoNC = [[UINavigationController alloc]initWithRootViewController:UVVC];
    
    //设置视图控制器
    
    UVVC.title = @"视频";
    
    //设置导航控制器
    
    videoNC.tabBarItem.title = @"视频直播";
    
    videoNC.tabBarItem.image = [UIImage imageNamed:@"iconfont-shipin"];
    
    videoNC.navigationBar.translucent = NO;//不透明
    
    videoNC.navigationBar.barTintColor = MAINCOLOER;
    
    videoNC.navigationBar.barStyle=UIBarStyleBlackOpaque;
    
    
    //---------------------------------------------
    
    
    
    
    //联盟百科
    
    Union_EncyViewController *UEVC = [[Union_EncyViewController alloc]init];
    
    UINavigationController *encyNC = [[UINavigationController alloc]initWithRootViewController:UEVC];
    
    
    //设置视图控制器
    
    UEVC.title = @"百科";
    
    
    //设置导航控制器
    
    encyNC.tabBarItem.title = @"联盟百科";
    
    encyNC.tabBarItem.image = [UIImage imageNamed:@"iconfont-ency"];
    
    encyNC.navigationBar.translucent = NO;//不透明
    
    encyNC.navigationBar.barTintColor = MAINCOLOER;
    
    encyNC.navigationBar.barStyle=UIBarStyleBlackOpaque;
    
    //---------------------------------------------
    
    
    
    
    //我的联盟
    
    Union_MyUnionViewController *UMUVC = [[Union_MyUnionViewController alloc]init];
    
    UINavigationController *myunionNC = [[UINavigationController alloc]initWithRootViewController:UMUVC];
    
    
    //设置视图控制器
    
    UMUVC.title = @"我";
    
    
    //设置导航控制器
    
    myunionNC.tabBarItem.title = @"我的";
    
    myunionNC.tabBarItem.image = [UIImage imageNamed:@"iconfont-myself"];
    
    myunionNC.navigationBar.translucent = NO;//不透明
    
    myunionNC.navigationBar.barTintColor = MAINCOLOER;
    
    myunionNC.navigationBar.barStyle=UIBarStyleBlackOpaque;//
    
    //---------------------------------------------
    
    
    self.tabBar.translucent = NO;//不透明
    
    self.viewControllers = @[newsNC , videoNC , encyNC , myunionNC];
    
    self.tabBar.tintColor = MAINCOLOER;
    
    [UNVC release];
    
    [newsNC release];
    
    [UVVC release];
    
    [videoNC release];
    
    [UEVC release];
    
    [encyNC release];
    
    [UMUVC release];
    
    [myunionNC release];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

//当前viewcontroller支持哪些转屏方向

-(NSUInteger)supportedInterfaceOrientations{
    
    return UIInterfaceOrientationMaskPortrait;
}

@end
