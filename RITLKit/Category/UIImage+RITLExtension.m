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
