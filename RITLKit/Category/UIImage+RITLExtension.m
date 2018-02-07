//
//  UIImage+RITLGIFHandler.m
//  XiaoNongDingClient
//
//  Created by YueWen on 2017/7/17.
//  Copyright © 2017年 ryden. All rights reserved.
//

#import "UIImage+RITLExtension.h"


@implementation UIImage (RITLScale)

-(NSData *)ritl_imageScaleWithSize:(CGSize)size
{
    UIGraphicsBeginImageContext(size);
    
    [self drawInRect:CGRectMake(0,0,size.width,size.height)];
    
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return UIImageJPEGRepresentation(newImage,0.8);
}

@end




@implementation UIImage (RITLRenderOrigin)

- (UIImage *)ritl_renderOriginImage
{
    return [self imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
}


@end


@implementation UIImage (RITLSize)


- (CGFloat)ritl_sizeWithKB
{
    // 图片转data
    NSData * imageData = UIImagePNGRepresentation(self);
    
    // 获得imageData大小
    NSUInteger dataSize = imageData.length;
    
    // 进行KB转换
    CGFloat sizeKB = dataSize / 1024.0 / 8.0;
    
    return sizeKB;
}


- (BOOL)ritl_sizeIsGetterThan:(CGFloat)size
{
    // 进行KB转换
    CGFloat sizeKB = self.ritl_sizeWithKB;
    
    return sizeKB > size;
}


- (UIImage *)ritl_imageWithMaxSize:(CGFloat)size
{
    if (![self ritl_sizeIsGetterThan:size]) {//如果不大于，直接返回自己
        
        return self;
    }
    
    // 进行KB转换
    CGFloat sizeKB = self.ritl_sizeWithKB;
    
    //进行比例兑换
    CGFloat scale = size / sizeKB;
    
    // 返回压缩后的图片
    return [UIImage imageWithData:UIImageJPEGRepresentation(self, scale)];
    
}

@end
