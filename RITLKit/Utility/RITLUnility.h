//
//  RITLUnility.h
//  RITLKitDemo
//
//  Created by YueWen on 2017/11/30.
//  Copyright © 2017年 YueWen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


#define RITL_SCREEN_WIDTH_SCALE ([UIScreen mainScreen].bounds.size.width/320.0f)
#define RITL_SCREEN_HEIGHT_SCALE ([UIScreen mainScreen].bounds.size.height/568.0f)
#define RITL_SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define RITL_SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height


#define RITL_iPhoneX ((SCREEN_WIDTH == 375) && (SCREEN_HEIGHT == 812))

#define RITL_NormalNavigationBarHeight (64)
#define RITL_iPhoneXNavigationBarHeight (88)
#define RITL_iPhoneXNavigationBarSafeDistance (88 - 44)
#define RITL_iPhoneXNavigationBarDistance (RITL_iPhoneX ? RITL_iPhoneXNavigationBarSafeDistance : 0)

#define RITL_NormalTabBarHeight (49)
#define RITL_iPhoneXTabBarHeight (83)
#define RITL_iPhoneXTabBarSafeDistance (34)
#define RITL_iPhoneXDistance (RITL_iPhoneXTabBarHeight - RITL_NormalTabBarHeight)
#define RITL_DefaultTabBarHeight (RITL_iPhoneX ? RITL_iPhoneXTabBarHeight : RITL_NormalTabBarHeight)


#define RITL_dispatch_main_sync_safe(block)\
if ([NSThread isMainThread]) {\
block();\
} else {\
dispatch_sync(dispatch_get_main_queue(), block);\
}


#define RITL_dispatch_main_async_safe(block)\
if ([NSThread isMainThread]) {\
block();\
} else {\
dispatch_async(dispatch_get_main_queue(), block);\
}


#define RITLSafeString(x) (x ? x : @"")
#define RITL_iOS_Version_GreaterThanOrEqualTo(x) (UIDevice.currentDevice.systemVersion.floatValue >= x)


#pragma mark - color

// 颜色转换
#define RITLRGBACOLOR(r,g,b,a)\
[UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]



// RGB颜色转换（16进制->10进制）
#define RITLColorFromRGB(rgbValue)\
RITLRGBACOLOR(((float)((rgbValue & 0xFF0000) >> 16)),((float)((rgbValue & 0xFF00) >> 8)),((float)(rgbValue & 0xFF)),1.0)


// RGB颜色转换
#define RITLColorFromIntRBG(RED, GREEN, BLUE) RITLRGBACOLOR(RED,GREEN,BLUE,1.0)
#define RITLSimpleColorFromIntRBG(x) (RITLColorFromIntRBG(x,x,x))
#define RITLColorSimpleFromIntRBG(x) (RITLSimpleColorFromIntRBG(x))



/// font
static NSString *const RITLFontPingFangSC_Regular = @"PingFangSC-Regular";
static NSString *const RITLFontPingFangSC_Medium = @"PingFangSC-Medium";
static NSString *const RITLFontPingFangSC_Bold = @"PingFangSC-Bold";



@interface RITLUnility : NSObject

@end

NS_ASSUME_NONNULL_END
