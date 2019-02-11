//
//  NSObject+RITLExtension.h
//  EattaClient
//
//  Created by YueWen on 2017/7/11.
//  Copyright © 2017年 ryden. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

NS_CLASS_DEPRECATED_IOS(2_0, 12_0,"This category is not useful! Maybe you can use a scope") @interface NSObject (RITLExtension)

/// 便利初始化方法
+ (instancetype)ritl_object:(void(^)(__kindof id object))initialHandler;

@end


NS_ASSUME_NONNULL_END
