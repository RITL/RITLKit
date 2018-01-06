//
//  RITLViewExtension.m
//  RITLKitDemo
//
//  Created by YueWen on 2018/1/6.
//  Copyright © 2018年 YueWen. All rights reserved.
//

#import "RITLViewExtension.h"
#import <objc/runtime.h>

@interface RITLViewAddHandler()

/// 所在的view
@property (nonatomic, weak) UIView *containView;

@end

@implementation RITLViewAddHandler

- (RITLViewAddHandler * _Nonnull (^)(UIView * _Nonnull))add
{
    return ^id(UIView * _Nonnull view){
        
        [self.containView addSubview:view];
        
        return self;
    };
}

@end


@protocol RITLViewHandler <NSObject>
/// 所在的view
@property (nonatomic, weak) UIView *containView;

@end

@interface RITLViewAddHandler (UIView)<RITLViewHandler>
@end


@implementation UIView (RITLViewAddHandler)

- (RITLViewAddHandler *)ritl_view
{
    RITLViewAddHandler* handler = objc_getAssociatedObject(self, _cmd);
    
    if (handler) {
        
        return handler;
    }
    
    handler = RITLViewAddHandler.new;
    handler.containView = self;
    
    objc_setAssociatedObject(self, _cmd, handler, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    return handler;
}




@end
