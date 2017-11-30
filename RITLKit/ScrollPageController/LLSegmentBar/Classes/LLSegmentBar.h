//
//  LLSegmentBar.h
//  LLSegmentBar
//
//  Created by liushaohua on 2017/6/3.
//  Copyright © 2017年 416997919@qq.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LLSegmentBarConfig.h"

@class LLSegmentBar;

@protocol LLSegmentBarDelegate <NSObject>

/**
  通知外界内部的点击数据

 @param segmentBar segmentBar
 @param toIndex 选中的索引从0 开始
 @param fromIndex 上一个索引
 */
- (void)segmentBar:(LLSegmentBar *)segmentBar didSelectIndex: (NSInteger)toIndex fromIndex: (NSInteger)fromIndex;

@end

/// 默认的宽度
extern CGFloat LLSegmentBarButtonsMarginDefault;


@interface LLSegmentBar : UIView

/**
 快速创建一个选项卡控件

 @param frame frame
 @return segment
 */
+ (instancetype)segmentBarWithFrame: (CGRect)frame;
/**代理*/
@property (nonatomic,weak) id<LLSegmentBarDelegate> delegate;
/**数据源*/
@property (nonatomic, strong)NSArray<NSString *> *items;
/**当前选中的索引，双向设置*/
@property (nonatomic,assign) NSInteger selectIndex;

- (void)updateWithConfig:(void(^)(LLSegmentBarConfig *config))configBlock;


/// 仅仅改变UI,不执行回调
- (void)changedSelectedOnlyWithIndex:(NSInteger)index;
- (void)changedSelectedOnlyWithIndex:(NSInteger)index actionDelegate:(BOOL)action;




/// 单屏不滑动,默认为false
@property (nonatomic, assign) BOOL isSimpleView;

/// 两边的边距,默认为0
@property (nonatomic, assign) CGFloat borderMargin;

/// 是否进行重复点击同一个button的阻隔信号，默认为true
@property (nonatomic, assign,getter=useRepetPrevent) BOOL repetPrevent;


/**
 *  指示条是否自动根据 item 的 title 的宽度自适应
 *  默认为 true
 */
@property (nonatomic, assign, getter=isIndicatorFitTitle) BOOL indicatorFitTitle;

/// 固定的宽度，默认为14pt
@property (nonatomic, assign) CGFloat indicatorConstWidth;

/// 指示器偏移底部的偏移量，默认为0
@property (nonatomic, assign) CGFloat indicatorMarginFromBottom;

/// 第一个按钮距离边缘的最小边距，默认为23
@property (nonatomic, assign) CGFloat buttonsMinMarginFromBorder;

/// 按钮的拓展宽度，默认为0
@property (nonatomic, assign) CGFloat buttonAddctionWidth;

/// button间的边距，默认为LLSegmentBarButtonsMarginDefault
@property (nonatomic, assign) CGFloat buttonsMargin;


@end
