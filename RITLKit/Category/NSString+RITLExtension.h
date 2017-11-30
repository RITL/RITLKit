//
//  RITLExtension
//  EattaClient
//
//  Created by YueWen on 2017/5/15.
//  Copyright © 2017年 ryden. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (RITLImageAttributeString)

/// 设置带图片的属性字符串
- (NSAttributedString *)ritl_imageAttributeStringWithImage:(UIImage *)image
                                               attributes:(NSDictionary * _Nullable)attributes
                                         baselineOffValue:(NSNumber *)value;


@end



@interface NSString (RITLMD5)

/// 32位小写的md5
@property (nonatomic, copy, readonly)NSString *ritl_md5ForLower32Bate;

@end


@interface NSString (RITLURL)

/// url
@property (nonatomic, strong, readonly, nullable) NSURL *ritl_url;

@end


@interface NSString (RITLPhone)

/// 进行*加密的手机号,不会进行手机号判定
@property (nonatomic, copy, readonly) NSString *ritl_phone;

@end


@interface NSString (RITLAttributeString)

/// 带下划线的字符串
@property (nonatomic, copy, readonly)NSAttributedString *ritl_underLineString;

/// 带中划线的字符窜
- (NSAttributedString *)ritl_middleLineStringWithColor:(UIColor *)lineColor font:(UIFont *)font;

@end


@interface NSString (RITLDate)

/// 格式 yyyy-MM-dd 格式的日期 - (本身为时间戳)
@property (nonatomic, copy, readonly, nullable) NSString *ritl_dayDate;

/// 格式 yyyy-MM-dd HH:mm:ss
@property (nonatomic, copy, readonly, nullable) NSString *ritl_detailDate;

/// 自动识别"今天"的格式 格式：yyyy-MM-dd HH:mm 如果日期为今天，表现为"今天 HH:mm"
@property (nonatomic, copy, readonly, nullable) NSString *ritl_AutoDiscriminatingTodayDate;

@end


@interface NSString (RITLRandom)

/// 32位随机字符串
@property (nonatomic, copy, readonly, nullable, class) NSString *ritl_randowString;

@end


@interface NSString (UIImage)

@property (nonatomic, copy, readonly, nullable) UIImage *ritl_image;

@end

NS_ASSUME_NONNULL_END
