//
//  RITLTabBarItem.h
//  XiaoNongDingClient
//
//  Created by YueWen on 2017/5/4.
//  Copyright © 2017年 ryden. All rights reserved.
//

#import "RITLButton.h"

NS_ASSUME_NONNULL_BEGIN

/// 自定义的UITabBarItem
@interface RITLButtonItem : RITLButton

/// 保证图片的带下，默认为(23,23) //保证最小的
@property (nonatomic, assign)CGSize imageSize __deprecated_msg("Will depretated in a later version, Please see RITLItemButton.");

/// badge数量，默认为nil
@property (nonatomic, copy) NSString *badgeValue __deprecated_msg("Will depretated in a later version, Please see RITLItemButton.");

/// badge背景颜色，默认为(255,85,85)
@property (nonatomic, strong) UIColor *badgeBarTintColor __deprecated_msg("Will depretated in a later version, Please see RITLItemButton.");

/// badge文本颜色，默认为白色
@property (nonatomic, strong) UIColor *badgeTextColor __deprecated_msg("Will depretated in a later version, Please see RITLItemButton.");

/// badge文本的字体,默认为systemFontOfSize:10
@property (nonatomic, strong) UIFont *badgeTextFont __deprecated_msg("Will depretated in a later version, Please see RITLItemButton.");

/// badge文本大于99（99+）时的字体，默认为 badgeTextFont
@property (nonatomic, strong) UIFont *badgeMaxTextFont __deprecated_msg("Will depretated in a later version, Please see RITLItemButton.");

/// badge的大小范围，矩形，默认为(20,15)
@property (nonatomic, assign) CGSize badgeSize __deprecated_msg("Will depretated in a later version, Please see RITLItemButton.");

/// badge视图的偏移，默认为(2,0,0,2)
@property (nonatomic, assign) UIEdgeInsets badgeInset __deprecated_msg("Will depretated in a later version, Please see RITLItemButton.");



/***  image 属性  ***/

/// 正常状态下的image
@property (nonatomic, strong) UIImage * normalImage __deprecated_msg("Will depretated in a later version, Please see RITLItemButton.");

/// 正常状态下的image网络图的url
@property (nonatomic, copy) NSString * normalImageURL __deprecated_msg("Will depretated in a later version, Please see RITLItemButton.");

/// 选中状态下的image,默认normalImage
@property (nonatomic, strong) UIImage * selectedImage __deprecated_msg("Will depretated in a later version, Please see RITLItemButton.");

/// 选中状态下的image网络图url,默认normalImageURL
@property (nonatomic, copy) NSString * selectedImageURL __deprecated_msg("Will depretated in a later version, Please see RITLItemButton.");

/// 显示badge
- (void)showBadge __deprecated_msg("Will depretated in a later version, Please see RITLItemButton.");

/// 隐藏badge
- (void)hiddenBadge __deprecated_msg("Will depretated in a later version, Please see RITLItemButton.");

@end

typedef RITLButtonItem RITLTabBarItem;

NS_ASSUME_NONNULL_END
