//
//  NSDate+RITLExtension.m
//  TaoKeClient
//
//  Created by YueWen on 2017/10/24.
//  Copyright © 2017年 YueWen. All rights reserved.
//

#import "NSDate+RITLExtension.h"

@implementation NSDate (RITLExtension)

+ (NSString *)ritl_timeIntervalSince1970
{
    NSDate *date = [NSDate new];
    
    return [NSString stringWithFormat:@"%@",@(date.timeIntervalSince1970)];
}

@end
