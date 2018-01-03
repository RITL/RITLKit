//
//  ViewController.m
//  RITLKitDemo
//
//  Created by YueWen on 2017/11/30.
//  Copyright © 2017年 YueWen. All rights reserved.
//

#import "ViewController.h"
#import "RITLKit.h"

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
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
