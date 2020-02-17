//
//  ViewController.m
//  RITLKitDemo
//
//  Created by YueWen on 2017/11/30.
//  Copyright © 2017年 YueWen. All rights reserved.
//

#import "ViewController.h"
#import "RITLKit.h"
//#import "UISearchBar+RITLCustomColor.h"
#import <RITLViewFrame/UIView+RITLFrameChanged.h>
#import <Masonry.h>

@interface ViewController ()

@property (nonatomic, strong) UISearchController *searchController;
@property (nonatomic, strong) UISearchBar * searchBar;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
//    UITextField *f = UITextField.new;
//    [f ritl_setPlaceholderFont:[UIFont systemFontOfSize:10]];
    
//    UISearchBar *b = UISearchBar.new;
//    [b ritl_setTextFieldPlaceHolderColor:UIColor.redColor];
    
    
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
    
//    [self.navigationController pushViewController:({
//
//        RITLWebViewController *webView =  RITLWebViewController.new;
////        webView.url = @" https://fopenapixgpre.cnsuning.com/auth?targetUrl=http%3A%2F%2Flcyxgpre.cnsuning.com%2Flcdcs%2FlcdcsIndex%2Findex.htm%3Fmerchant_no%3D70056734%26sign%3DP4VRmP2M3zaet4jsbtsZ5lSS1Lzp0jtascxS8Npskb_8f_Xg9nYqp8-pzGEaYFZG8GaTfZYZOWbUlglD7FALYsXWPmMn29n-0xyhdjBrl9kx0rLJgQ-2ZxNYKeUZRDDBLvAWl_cMAUgkZRgzB8mH78-sl6Ctlgzg8LCuGqbWdNM%26user_no%3D0000000001118265812%26timestamp%3D20190801091650&ticket=79*ST14F1F2036D23355EEE2500EFFFE97916";
//        webView.url = @"https://www.baidu.com";
//
//        webView;
//
//    }) animated:true];
    
    NSString *s = @"13812345678sf2Hi3eWr513815678".ritl_md5ForUpper32Bate;
    NSLog(@"%@",s);
    
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
