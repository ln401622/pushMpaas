//
//  MyTabBarController.m
//  TEST_TEXT
//
//  Created by LiuHaH on 2023/2/9.
//

#import "MyTabBarController.h"
#import "OneController.h"
#import <YYKit/YYKit.h>
#define LIUYANBUZAILE(hexValue) [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16)) / 255.0 green:((float)((hexValue & 0xFF00) >> 8)) / 255.0 blue:((float)(hexValue & 0xFF)) / 255.0 alpha:1.0f]


@interface MyTabBarController ()

@end

@implementation MyTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [UINavigationBar appearance].barStyle = UIBarStyleBlackOpaque;
    [UITabBar appearance].translucent = NO;
    [UINavigationBar appearance].translucent = NO;
    [UITabBar appearance].tintColor = LIUYANBUZAILE(0xc1c126);
    
    [[UITabBar appearance] setBackgroundImage:[UIImage imageWithColor:LIUYANBUZAILE(0xFFFFFF)]];
    [[UITabBar appearance] setShadowImage:[UIImage imageWithColor:LIUYANBUZAILE(0xFFFFFF)]];
    
    
    OneController *vc = [OneController new];
    vc.title = @"首页";
    UIImage * homeImage = [UIImage imageNamed:@"hone11"];
    homeImage = [homeImage  imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.image = homeImage;
    UIImage * homeImage1 = [UIImage imageNamed:@"hone12"];
    homeImage1 = [homeImage1  imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.selectedImage = homeImage1;
    UINavigationController *navi1 = [[UINavigationController alloc] initWithRootViewController:vc];
    
    
    OneController *vc2 = [OneController new];
    vc2.title = @"首页";
    UIImage * homeImage3 = [UIImage imageNamed:@"hone11"];
    homeImage3 = [homeImage3  imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.image = homeImage3;
    UIImage * homeImage4 = [UIImage imageNamed:@"hone12"];
    homeImage4 = [homeImage4  imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc2.tabBarItem.selectedImage = homeImage1;
    UINavigationController *navi2 = [[UINavigationController alloc] initWithRootViewController:vc2];
    
    OneController *vc3 = [OneController new];
    vc3.title = @"首页";
    UIImage * homeImage2 = [UIImage imageNamed:@"hone11"];
    homeImage2 = [homeImage  imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.image = homeImage2;
    UIImage * homeImage5 = [UIImage imageNamed:@"hone12"];
    homeImage5 = [homeImage5  imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc3.tabBarItem.selectedImage = homeImage5;
    UINavigationController *navi3 = [[UINavigationController alloc] initWithRootViewController:vc3];
    
    OneController *vc4 = [OneController new];
    vc4.title = @"首页";
    UIImage * homeImage6 = [UIImage imageNamed:@"hone11"];
    homeImage6 = [homeImage6  imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.image = homeImage;
    UIImage * homeImage7 = [UIImage imageNamed:@"hone12"];
    homeImage7 = [homeImage7  imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc4.tabBarItem.selectedImage = homeImage7;
    UINavigationController *navi4 = [[UINavigationController alloc] initWithRootViewController:vc4];
    
    self.viewControllers = @[navi1,navi2,navi3,navi3];
    
    
}



@end
