//
//  AppDelegate.m
//  RITLKitDemo
//
//  Created by YueWen on 2017/11/30.
//  Copyright © 2017年 YueWen. All rights reserved.
//

#import "AppDelegate.h"
#import "RITLKit.h"
#import <RITLViewFrame/UIView+RITLFrameChanged.h>

@interface AppDelegate ()

@property (nonatomic, strong) UIImageView *animatedImageView;
@property (nonatomic, strong) UILabel *titleLabel;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    UIViewController *viewController = [UIStoryboard storyboardWithName:@"Main" bundle:NSBundle.mainBundle].instantiateInitialViewController;
    
    self.window = [[UIWindow alloc]initWithFrame:UIScreen.mainScreen.bounds];
    self.window.rootViewController = viewController;
    [self.window makeKeyAndVisible];
    
    
    //初始化
    self.animatedImageView = ({
        
        UIImageView *imageView = [UIImageView new];
        imageView.contentMode = UIViewContentModeScaleAspectFill;
        imageView.image = [(RITL_iPhoneX ? @"ritl_iphonex" : @"ritl_iphone") ritl_image];
        
        
        imageView;
    });
    
    
    self.titleLabel = ({
        
        UILabel *label = [UILabel new];
        label.backgroundColor = [UIColor blackColor];
        label.text = @"小黑丹";
//        label.
        label.textColor = UIColor.whiteColor;
        
        label;
    });
    
    
    [self.animatedImageView addSubview:self.titleLabel];
    self.animatedImageView.frame = UIScreen.mainScreen.bounds;
    self.titleLabel.frame = CGRectMake(0, 0, 200, 100);
    self.titleLabel.center = CGPointMake(self.animatedImageView.ritl_width / 2.0, 300);
    
//    [self.window addSubview:self.animatedImageView];
//    [self.window bringSubviewToFront:self.animatedImageView];
//    
    
//    [UIView animateWithDuration:3 delay:0 options:UIViewAnimationOptionCurveEaseInOut animations:^{
//        ;
//    } completion:^(BOOL finished) {
//
//
////        [self.animatedImageView removeFromSuperview];
//    }];

    NSLog(@"screenWidth = %@,screenHeight = %@",@(RITL_SCREEN_WIDTH),@(RITL_SCREEN_HEIGHT));
    
    
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
