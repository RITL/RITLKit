//
//  RITLTabBarItem.h
//  XiaoNongDingClient
//
//  Created by YueWen on 2017/5/4.
//  Copyright © 2017年 ryden. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/// 自定义的RITLButtonItem
@interface RITLItemButton : UIControl

/// 文字标签
@property (nonatomic, strong) UILabel * titleLabel;
/// 文字标签上的图片
@property (nonatomic, strong) UIImageView * imageView;
/// titleLabel的内距，默认为(5,0,0,0)
@property (nonatomic, assign) UIEdgeInsets titleLabelEdgeInsets;
/// imageView的内距，默认为(0,0,0,0)
@property (nonatomic, assign) UIEdgeInsets imageViewEdgeInsets;
/// 是否自动调整imageView, 默认为true, 自动调整imageView为 宽:高 = 1:1
@property (nonatomic, assign, getter=isAutoAdjustImageView) BOOL autoAdjustImageView;


/// 保证图片的带下，默认为(23,23) //保证最小的
@property (nonatomic, assign)CGSize imageSize;
/// badge数量，默认为nil
@property (nonatomic, copy) NSString *badgeValue;
/// badge背景颜色，默认为(255,85,85)
@property (nonatomic, strong) UIColor *badgeBarTintColor;
/// badge文本颜色，默认为白色
@property (nonatomic, strong) UIColor *badgeTextColor;
/// badge文本的字体,默认为systemFontOfSize:10
@property (nonatomic, strong) UIFont *badgeTextFont;
/// badge文本大于99（99+）时的字体，默认为 badgeTextFont
@property (nonatomic, strong) UIFont *badgeMaxTextFont;
/// badge的大小范围，矩形，默认为(20,15)
@property (nonatomic, assign) CGSize badgeSize;
/// badge视图的偏移，默认为(2,0,0,2)
@property (nonatomic, assign) UIEdgeInsets badgeInset;



/***  image 属性  ***/

/// 正常状态下的image
@property (nonatomic, strong) UIImage * normalImage;
/// 正常状态下的image网络图的url
@property (nonatomic, copy) NSString * normalImageURL;
/// 选中状态下的image,默认normalImage
@property (nonatomic, strong) UIImage * selectedImage;
/// 选中状态下的image网络图url,默认normalImageURL
@property (nonatomic, copy) NSString * selectedImageURL;

/// 显示badge
- (void)showBadge;
/// 隐藏badge
- (void)hiddenBadge;

@end

typedef RITLItemButton RITLTabBarItem;

NS_ASSUME_NONNULL_END
