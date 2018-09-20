//
//  ViewController.m
//  RITLKitDemo
//
//  Created by YueWen on 2017/11/30.
//  Copyright © 2017年 YueWen. All rights reserved.
//

#import "ViewController.h"
#import "RITLKit.h"
#import <RITLViewFrame/UIView+RITLFrameChanged.h>
#import <Masonry.h>

@interface ViewController ()

@property (nonatomic, strong) UISearchController *searchController;
@property (nonatomic, strong) UISearchBar * searchBar;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    
//    self.searchBar = ({
//        
//        UISearchBar *searbar = [[UISearchBar alloc]initWithFrame:CGRectMake(0, 100, UIScreen.mainScreen.bounds.size.width, 44)];
//        
//        
//        searbar;
//    });
    
//    self.searchController = [[UISearchController alloc]initWithSearchResultsController:nil];
//
//    self.searchController.searchBar.frame = CGRectMake(0, 100, UIScreen.mainScreen.bounds.size.width, 44);
//    self.searchController.searchBar.layer.cornerRadius = 10;
////    [self.view addSubview:self.searchController.searchBar];
//
//
//
//    RITLSearchView *search = [[RITLSearchView alloc]initWithFrame:CGRectMake(0, 150, self.ritl_width, 28)];
//    search.searchTextField.layer.cornerRadius = 14;
//    search.backgroundColor = RITLColorFromIntRBG(40, 54, 80);
//    search.textFieldBackgroundColor = [UIColor.whiteColor colorWithAlphaComponent:0.2];
//    search.placeholder = @"小黑丹";
//    search.searchInsets = UIEdgeInsetsMake(5, 5, 5, 5);
//    search.leftImage = @"icon_search".ritl_image;
//    search.searchIconInsets = UIEdgeInsetsMake(6, 8, 6, 0);
//    search.placeholderFont = [UIFont systemFontOfSize:12];
//    search.placeholderColor = UIColor.whiteColor;
////    [self.view addSubview:search];
//
//    self.view.ritl_view.add(self.searchController.searchBar).add(search).remove(search);
//
//
//    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(0, 190, 60, 30)];
//    button.ritl_normalTitle = @"Hello";
////    button.ritl_normalBackgroundImage = UIColor.blueColor.ritl_image;
//    button.ritl_normalTitleColor = UIColor.whiteColor;
//    button.ritl_normalImage = UIColor.whiteColor.ritl_image;
//    button.ritl_normalBackgroundImage
    
//    self.view.ritl_view.add(button);
    
    
//    NSLog(@"size = %@",@(@"ritl_iphonex".ritl_image.ritl_sizeWithKB));
    
    
//    UILabel *label = [UILabel new];
//    label.text = @"小黑丹";
//    label.backgroundColor = UIColor.yellowColor;
//    label.font = [UIFont fontWithName:RITLFontPingFangSC_Regular size:20];
//    
//    [self.view addSubview:label];
//    
//    [label mas_makeConstraints:^(MASConstraintMaker *make) {
//       
//        make.top.equalTo(self.searchController.searchBar.mas_bottom).offset(10);
//        make.left.offset(120);
//    }];
//    
//    [label addUIControlHandler:^(UIView * _Nonnull view) {
//       
//        //设置badge
//        view.ritl_badgeValue = @"10";
//        view.ritl_badgeBarTintColor = UIColor.redColor;
//        
//    }];
    
    NSLog(@"screenWidth = %@,screenHeight = %@",@(RITL_SCREEN_WIDTH),@(RITL_SCREEN_HEIGHT));
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)dealloc
{
//    NSInteger i = 0;
}


@end
