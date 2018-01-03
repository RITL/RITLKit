//
//  UIImage+RITLGIFHandler.h
//  XiaoNongDingClient
//
//  Created by YueWen on 2017/7/17.
//  Copyright © 2017年 ryden. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


@interface UIImage (RITLScale)

/// 分辨率进行缩放
- (NSData *)ritl_imageScaleWithSize:(CGSize)size;

@end




@interface UIImage (RITLRenderOrigin)

/// UIImageRenderingModeAlwaysOriginal
@property (nonatomic, strong, readonly)UIImage *ritl_renderOriginImage;

@end


NS_ASSUME_NONNULL_END
