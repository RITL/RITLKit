//
//  TKRuntimeTool.h
//  EattaClient
//
//  Created by YueWen on 2017/9/14.
//  Copyright © 2017年 ryden. All rights reserved.
//

#import <Foundation/Foundation.h>

/// runtime 交换方法
void TK_swizzledInstanceSelector(Class classObject,SEL originSel,SEL swizzledSel);
void TK_swizzledClassSelector(Class classObject,SEL originSel,SEL swizzledSel);
