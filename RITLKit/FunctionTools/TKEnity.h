//
//  TKEnity.h
//  TaoKeClient
//
//  Created by YueWen on 2017/11/1.
//  Copyright © 2017年 YueWen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol TKEnity

/// 读出真正的数据data
@property (nonatomic, copy, nullable, readonly) NSDictionary *proxy_real_enity;

@end

NS_ASSUME_NONNULL_END
