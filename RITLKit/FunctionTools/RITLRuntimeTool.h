//
//  RITLRuntimeTool.h
//  EattaClient
//
//  Created by YueWen on 2017/9/14.
//  Copyright © 2017年 ryden. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// runtime 交换方法
void RITL_swizzledInstanceSelector(Class classObject,SEL originSel,SEL swizzledSel);
void RITL_swizzledClassSelector(Class classObject,SEL originSel,SEL swizzledSel);

NS_ASSUME_NONNULL_END
