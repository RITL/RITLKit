//
//  ETScrollPageViewController.h
//  XiaoNongDingClient
//
//  Created by YueWen on 2017/9/4.
//  Copyright © 2017年 ryden. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LLSegmentBar.h"

NS_ASSUME_NONNULL_BEGIN

/// UIPageViewControllerTransitionStyleScroll 模式下的UIPageViewController
@interface RITLScrollPageViewController : UIPageViewController

/// 当前的控制器
@property (nonatomic, weak, nullable) UIViewController *currentViewController;

/// 当前控制器的索引
@property (nonatomic, assign, readonly) NSInteger currentIndex;

/// 涵盖的viewControllers
@property (nonatomic, copy)NSArray <__kindof UIViewController *> *contentViewControllers;


@end




@class RITLScrollHorizontalPageViewController;

@protocol RITLScrollHorizontalPageDelegate <NSObject>

@optional


/**
 ETScrollHorizontalPageViewController 将要变为第几个控制器

 @param viewController ETScrollHorizontalPageViewController
 @param index 当前控制器的index
 */
- (void)ritl_scrollHorizontalPageViewController:(RITLScrollHorizontalPageViewController *)viewController
                                  willToIndex:(NSInteger)index;


@end



@interface RITLScrollHorizontalPageViewController : RITLScrollPageViewController <LLSegmentBarDelegate>

/// 代理
@property (nonatomic, weak, nullable) id<RITLScrollHorizontalPageDelegate> ritl_delegate;

/// 控制器
@property (nonatomic, strong) LLSegmentBar * segmentBar;

/// 导航栏的pop手势
@property (nonatomic, weak)UIPanGestureRecognizer *popPanGestureRecognizer;

@end


@interface RITLScrollVerticalPageViewController : RITLScrollPageViewController

@end








@interface UIPageViewController (RITLScrollView)

/// 滚动视图
@property (nonatomic, weak, nullable, readonly) UIScrollView *ritl_scrollView;

/// 滚动视图的滑动手势
@property (nonatomic, strong, nullable, readonly) UIPanGestureRecognizer *ritl_scrollPanGestureRecongnizer;

/// 滚动视图的所有手势
@property (nonatomic, copy, nullable, readonly) NSArray <UIGestureRecognizer *> *ritl_gestureRecongnizers;

@end
















@interface RITLScrollPageViewController (UIPageViewControllerDataSource) <UIPageViewControllerDataSource>



@end



@interface RITLScrollPageViewController (UIPageViewControllerDelegate) <UIPageViewControllerDelegate>



@end


NS_ASSUME_NONNULL_END
