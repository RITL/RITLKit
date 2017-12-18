//
//  RITLUnility.m
//  RITLKitDemo
//
//  Created by YueWen on 2017/11/30.
//  Copyright © 2017年 YueWen. All rights reserved.
//

#import "RITLUtility.h"

@implementation RITLUtility


+ (UIFont *)checkWhetherExistFontWithName:(NSString *)fontName AndSize:(CGFloat)size
{
    UIFont *checkFont = [UIFont fontWithName:fontName size:size];
    if (checkFont == nil) {
        if ([fontName containsString:@"Bold"]) {
            checkFont = [UIFont boldSystemFontOfSize:size];
        } else {
            checkFont = [UIFont systemFontOfSize:size];
        }
    }
    return checkFont;
}


//检测字符串是否是纯数字
+ (BOOL)isStringAllNumber:(NSString *)num
{
    NSString *number = @"0123456789";
    NSCharacterSet *cs = [[NSCharacterSet characterSetWithCharactersInString:number] invertedSet];
    NSString *filtered = [[num componentsSeparatedByCharactersInSet:cs] componentsJoinedByString:@""];
    BOOL basic = [num isEqualToString:filtered];
    return basic;
}

//检测字符串是否是数字或字母组成
+ (BOOL)isStringNumberOrLetter:(NSString *)num
{
    NSString *numberOrLetter = @"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    NSCharacterSet *cs = [[NSCharacterSet characterSetWithCharactersInString:numberOrLetter] invertedSet];
    NSString *filtered = [[num componentsSeparatedByCharactersInSet:cs] componentsJoinedByString:@""];
    BOOL basic = [num isEqualToString:filtered];
    return basic;
}


//检测是否是手机号码
+ (BOOL)isStringMobileNumber:(NSString *)mobileNum
{
    NSString * mobile = @"^1[34578]\\d{9}$";
    NSPredicate *regextestmobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", mobile];
    if ([regextestmobile evaluateWithObject:mobileNum] == YES) {
        return YES;
    }else {
        return NO;
    }
}


@end

UIFont *RITLUtilityFont(NSString *fontName,CGFloat size)
{
    return [RITLUtility checkWhetherExistFontWithName:fontName AndSize:size];
}

