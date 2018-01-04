//
//  ViewController.m
//  RITLKitDemo
//
//  Created by YueWen on 2017/11/30.
//  Copyright © 2017年 YueWen. All rights reserved.
//

#import "ViewController.h"
#import "RITLKit.h"
#import <Masonry.h>

@interface ViewController ()

@property (nonatomic, strong) UISearchController *searchController;
@property (nonatomic, strong) UISearchBar * searchBar;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    self.searchBar = ({
        
        UISearchBar *searbar = [[UISearchBar alloc]initWithFrame:CGRectMake(0, 100, UIScreen.mainScreen.bounds.size.width, 44)];
        
        
        searbar;
    });
    
    self.searchController = [[UISearchController alloc]initWithSearchResultsController:nil];
    
    self.searchController.searchBar.frame = CGRectMake(0, 100, UIScreen.mainScreen.bounds.size.width, 44);
    self.searchController.searchBar.layer.cornerRadius = 10;
    [self.view addSubview:self.searchController.searchBar];
    
    
    
    RITLSearchView *search = [[RITLSearchView alloc]initWithFrame:CGRectMake(0, 150, self.ritl_width, 40)];
    search.placeholder = @"小黑丹";
    search.searchInsets = UIEdgeInsetsMake(5, 5, 5, 5);
    search.backgroundColor = UIColor.blueColor;
    search.placeholderFont = [UIFont systemFontOfSize:5];
    search.textFieldBackgroundColor = UIColor.greenColor;
    search.placeholderColor = UIColor.orangeColor;
    [self.view addSubview:search];
    
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
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
