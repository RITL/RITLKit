//
//  ETButton.h
//  XiaoNongDingClient
//
//  Created by YueWen on 2017/4/26.
//  Copyright © 2017年 ryden. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/**
 自定义button,类型为上图下文字
 建议使用功能更加齐全的---- RITLButtonItem
 */
NS_CLASS_DEPRECATED_IOS(2_0, 12_0,"Maybe you can see RITLItemButton") @interface RITLButton : UIButton

/// 文字标签
@property (nonatomic, strong) UILabel * titleLabel __deprecated_msg("Will depretated in a later version, Please see RITLItemButton.");
/// 文字标签上的图片
@property (nonatomic, strong) UIImageView * imageView __deprecated_msg("Will depretated in a later version, Please see RITLItemButton.");
/// 圆角设置,默认为false
@property (nonatomic, assign, getter=imageViewIsCornerRadius) BOOL imageViewCornerRadius __deprecated_msg("Will depretated in a later version, Please see RITLItemButton.");
/// 显示在imageView的默认图片，默认为测试
@property (nonatomic, strong) UIImage * defaultImage __deprecated_msg("Will depretated in a later version, Please see RITLItemButton.");
/// 选中的图层视图,默认hidden
@property (nonatomic, strong) UIImageView * selectedImageView __deprecated_msg("Will depretated in a later version, Please see RITLItemButton.");
/// imageView的内距，默认为(0,0,0,0)
@property (nonatomic, assign) UIEdgeInsets imageViewEdgeInsets __deprecated_msg("Will depretated in a later version, Please see RITLItemButton.");
/// titleLabel的内距，默认为(5,0,0,0)
@property (nonatomic, assign) UIEdgeInsets titleLabelEdgeInsets __deprecated_msg("Will depretated in a later version, Please see RITLItemButton.");
/// 是否自动调整imageView, 默认为true, 自动调整imageView为 宽:高 = 1:1
@property (nonatomic, assign, getter=isAutoAdjustImageView) BOOL autoAdjustImageView __deprecated_msg("Will depretated in a later version, Please see RITLItemButton.");


#pragma mark - status


/**
 表示选中的状态
 */
- (void)didSelectedHandler __deprecated_msg("Will depretated in a later version, Please see RITLItemButton.");
/**
 表示未选中的状态
 */
- (void)didDisSelectedHandler __deprecated_msg("Will depretated in a later version, Please see RITLItemButton.");
/**
 恢复所有的默认值
 */
- (void)prepareForReuse __deprecated_msg("Will depretated in a later version, Please see RITLItemButton.");


@end

NS_ASSUME_NONNULL_END
