//
//  RITLScrollPageViewTestController.m
//  RITLKitDemo
//
//  Created by YueWen on 2017/12/18.
//  Copyright © 2017年 YueWen. All rights reserved.
//

#import "RITLScrollPageViewTestController.h"
#import "RITLScrollPageViewController.h"
#import "RITLKit.h"
#import <Masonry.h>

@interface RITLScrollPageViewTestController ()

@property (nonatomic, strong) RITLScrollHorizontalPageViewController * horizaonPageController;

@end

@implementation RITLScrollPageViewTestController

- (instancetype)init
{
    if (self = [super init]) {
        
        self.hidesBottomBarWhenPushed = true;
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.horizaonPageController = ({
       
        RITLScrollHorizontalPageViewController *viewController = [[RITLScrollHorizontalPageViewController alloc]init];
        viewController.bottomView.hidden = false;
        
        viewController.contentViewControllers = @[({
            
            UIViewController *vc1 = [UIViewController new];
//            vc1.view.backgroundColor = UIColor.orangeColor;
            
            vc1;
        }),({
            
            
            UIViewController *vc1 = [UIViewController new];
//            vc1.view.backgroundColor = UIColor.redColor;
            
            vc1;
            
        }),({
            
            UIViewController *vc1 = [UIViewController new];
//            vc1.view.backgroundColor = UIColor.greenColor;
            
            vc1;
        })];
        
        
        viewController.segmentBar.items = @[@"橘黄色",@"红色",@"绿色"];
        
        viewController;
        
    });
    
    
    [self.view addSubview:self.horizaonPageController.view];
    [self addChildViewController:self.horizaonPageController];
    
    [self.horizaonPageController.view mas_makeConstraints:^(MASConstraintMaker *make) {
       
        CGFloat top = RITL_iPhoneX ? 88 : 64;
        
        make.top.offset(top);
        make.left.right.bottom.offset(0);
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
