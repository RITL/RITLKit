//
//  RITLWebViewController.m
//  EattaClient
//
//  Created by YueWen on 2017/6/30.
//  Copyright © 2017年 ryden. All rights reserved.
//

#import "RITLWebViewController.h"
#import "RITLScriptMessageHandler.h"
#import "UIView+RITLFrameChanged.h"
#import "RITLUtility.h"
#import "RITLWebScriptMessageHandler.h"
#import <Masonry/Masonry.h>
#import <objc/runtime.h>

@import WebKit;

@interface RITLWebViewController ()<WKScriptMessageHandler>

@property (nonatomic, strong, readwrite) WKWebView *webView;

@end

@implementation RITLWebViewController


- (instancetype)init
{
    if (self = [super init]) {
        
        self.autoTitle = true;
    }
    
    return self;
}



+(instancetype)ritl_WebControllerHandler:(RITLWebControllerConfigHandler)configHandler
{
    RITLWebViewController *viewController = [RITLWebViewController new];
    
    //进行配置
    configHandler(viewController);
    
    return viewController;
}




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor orangeColor];
    
    if (!RITL_iOS_Version_GreaterThanOrEqualTo(11.0)) {
        
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    
    //设置导航
    if (self.webTitle) {
        
        self.navigationItem.title = self.webTitle;
    }
    
    //添加
    [self.view addSubview:self.webView];
    
    if (self.p_hasNavigationBar) {

        //限制titleView的宽度
        self.navigationItem.titleView.ritl_width = self.ritl_width - (40 * 2);
        [self.navigationController.navigationBar addSubview:self.progressView];
    }

    else {

        [self.view addSubview:self.progressView];
    }

    // 进度条类型
    self.progressView.progressViewStyle = self.p_hasNavigationBar ?  UIProgressViewStyleBar : UIProgressViewStyleDefault;
    
    //监听进度
    [self.webView addObserver:self forKeyPath:@"estimatedProgress" options:NSKeyValueObservingOptionNew context:@"webView_estimatedProgress"];
    [self.webView addObserver:self forKeyPath:@"loading" options:NSKeyValueObservingOptionNew context:@"webView_loading"];
    [self.webView addObserver:self forKeyPath:@"canGoBack" options:NSKeyValueObservingOptionNew context:@"webView_canGoBack"];

    //监听进度条
    [self.progressView addObserver:self forKeyPath:@"hidden" options:NSKeyValueObservingOptionNew context:@"progressView_hidden"];

    
    //设置代理
    self.webView.navigationDelegate = self.navigationDelegate ? self.navigationDelegate : self;
    
    // 如果存在交互
    if (self.scriptMessageHandlers) {
        
        //添加
        for (id <WKScriptMessageHandler,RITLScriptMessageHandler> handler in self.scriptMessageHandlers) {
            
            [self.webView.configuration.userContentController addScriptMessageHandler:[RITLScriptMessageHandler scriptWithDelegate:handler] name:handler.name];
        }
    }
    
    //进行name注册
    if (self.messageHanderNames) {
        
        for (NSString *name in self.messageHanderNames) {
            
            [self.webView.configuration.userContentController addScriptMessageHandler:[RITLScriptMessageHandler scriptWithDelegate:self] name:name];
        }
    }
    
    
    //进行加载
    if (self.url && self.autoRequestUrlAtViewDidLoad) {
        
        [self requestUrl];
    }

}




- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    
    if (!RITL_iOS_Version_GreaterThanOrEqualTo(11.0)) {
        
        self.view.frame = CGRectMake(self.view.ritl_originX, self.view.ritl_originY, self.ritl_width, self.ritl_height + 49);
        
    }
}

-(void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    
    if (self.p_hasNavigationBar) {
        
        self.progressView.frame = CGRectMake(0, self.progressView.superview.ritl_height - 1, self.progressView.superview.ritl_width, 1);
        
        CGFloat height = RITL_iOS_Version_GreaterThanOrEqualTo(11.0) ? 0 : 0;
        
        self.webView.frame = CGRectMake(0, 0, self.ritl_width, self.ritl_height + height);
    }
    
    else {
        
        self.progressView.frame = CGRectMake(0, 0, self.ritl_width, 1);
        CGFloat height = RITL_iOS_Version_GreaterThanOrEqualTo(11.0) ? 0 : 0;
        self.webView.ritl_originY = 1;
        self.webView.ritl_height = self.ritl_height - 1 + height;
    }
}


- (BOOL)autoRequestUrlAtViewDidLoad
{
    return true;
}


- (void)requestUrl
{
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.url]]];
}



- (void)actionBackItemInNavigationBar
{
    if (self.webView.canGoBack) {
        
        WKBackForwardListItem *backForward = self.webView.backForwardList.backItem;
        
        NSString *title = backForward.title;
        
        [self.webView goBack];
        
        if (title) {
            
            self.navigationItem.title = title;
        }
        

    }else {
        
//        [super actionBackItemInNavigationBar];
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




-(void)dealloc
{
    if (self.viewLoaded) {
        
        [self.progressView removeFromSuperview];
        [self.webView.configuration.userContentController removeAllUserScripts];
        [self.webView removeObserver:self forKeyPath:@"estimatedProgress" context:@"webView_estimatedProgress"];
        [self.webView removeObserver:self forKeyPath:@"loading" context:@"webView_loading"];
        [self.webView removeObserver:self forKeyPath:@"canGoBack" context:@"webView_canGoBack"];
        [self.progressView removeObserver:self forKeyPath:@"hidden"];
    }
}




- (BOOL)p_hasNavigationBar
{
    return self.navigationController.navigationBar && self.navigationController.navigationBar.hidden == false;
}



-(WKWebView *)webView
{
    if (!_webView) {

        _webView = [[WKWebView alloc]initWithFrame:CGRectMake(0, 0, self.ritl_width, self.ritl_height) configuration:[WKWebViewConfiguration new]];
    }
    
    return _webView;
}




-(UIProgressView *)progressView
{
    if (!_progressView) {
        
        _progressView = [[UIProgressView alloc]initWithFrame:CGRectMake(0, 0, 0, 1)];
        _progressView.progress = 0.0;
        
    }
    
    return _progressView;
}



- (NSArray<id<WKScriptMessageHandler,RITLScriptMessageHandler>> *)scriptMessageHandlers
{
    if (!_scriptMessageHandlers) {
        
        _scriptMessageHandlers = @[[RITLWebScriptMessageHandler new]];
    }
    
    return _scriptMessageHandlers;
}




#pragma mark - KVO

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
{
    id changedNew = change[NSKeyValueChangeNewKey];
    
    // 进度条
    if ([keyPath isEqualToString:@"estimatedProgress"]) {
        
        self.progressView.progress = [changedNew floatValue];
        
    }
    
    // 是否正在加载
    else if([keyPath isEqualToString:@"loading"]){
        
        self.progressView.hidden = ![changedNew boolValue];
    }
    
    
    // 是否可以回退
    else if([keyPath isEqualToString:@"canGoBack"]){
        
        //获得值
        BOOL hasBackWeb = [changedNew boolValue];
        
        //获得旧值
        NSNumber *origin = objc_getAssociatedObject(self.webView, _cmd);
        
        //记录旧值
        if (origin && origin.boolValue == hasBackWeb) {
            
            return;//没有变化
        }
        
        //进行赋值
        objc_setAssociatedObject(self.webView, _cmd, @(hasBackWeb), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        
        self.navigationItem.rightBarButtonItem = hasBackWeb ?  [[UIBarButtonItem alloc]initWithImage:/*@"关闭"*/self.closeImage style:UIBarButtonItemStylePlain target:self action:@selector(close)] : nil;
    }
    
    // 进度条展示
    else if([keyPath isEqualToString:@"hidden"]) {
        
        // 如果不是navigationBar
        if (![self.progressView.superview isKindOfClass:[UINavigationBar class]]) {
            
            BOOL isHidden = [changedNew boolValue];
            
            CGFloat height = RITL_iOS_Version_GreaterThanOrEqualTo(11.0) ? 0 : 0;
            
            //变换frame
            self.webView.ritl_originY = isHidden ? 0 : 1;
            self.webView.ritl_height = isHidden ? self.ritl_height + height : self.ritl_height - 1 + height;
        }
    }
}



- (NSArray <UIBarButtonItem *>*)backItemsWithCanGoBack:(BOOL)canGoBack {
    
    //获得back
    UIBarButtonItem *backItem = self.navigationItem.leftBarButtonItems.firstObject;
    
    if (canGoBack) {
        
        UIBarButtonItem *closeItem = [[UIBarButtonItem alloc]initWithImage:/*@"关闭"*/self.closeImage style:UIBarButtonItemStylePlain target:self action:@selector(close)];
        
        closeItem.imageInsets = UIEdgeInsetsMake(0, -20, 0, 20);
        closeItem.width = 32;
        
        return @[backItem,closeItem];
    }
    
    return @[backItem];
    
}


- (void)close
{
    [self.navigationController popViewControllerAnimated:true];
}



- (UIImage *)closeImage
{
    if (!_closeImage) {
        
        return [UIImage imageNamed:@"web_close"];
    }
    
    return _closeImage;
}


#pragma mark - WKNavigationDelegate

// 开始
- (void)webView:(WKWebView *)webView didStartProvisionalNavigation:(null_unspecified WKNavigation *)navigation
{
    NSLog(@"开始加载!");
}


// 完成
- (void)webView:(WKWebView *)webView didFinishNavigation:(null_unspecified WKNavigation *)navigation
{
    NSLog(@"开始完成!");
    //设置title
    if (self.autoTitle && webView.title) {
        
        self.navigationItem.title = webView.title;
    }
    
    self.progressView.progress = 0.0;
    self.progressView.hidden = true;
}

// 失败
- (void)webView:(WKWebView *)webView didFailNavigation:(null_unspecified WKNavigation *)navigation withError:(NSError *)error
{
    self.progressView.progress = 0.0;
    self.progressView.hidden = true;
}



- (void)webView:(WKWebView *)webView decidePolicyForNavigationAction:(WKNavigationAction *)navigationAction decisionHandler:(void (^)(WKNavigationActionPolicy))decisionHandler
{
    NSURL *url = navigationAction.request.URL;
    UIApplication *app = [UIApplication sharedApplication];
    
    // 打开appstore
    if ([url.absoluteString containsString:@"https://itunes.apple.com/cn/app/"])
    {
        if ([app canOpenURL:url]) {
            

            if ([UIDevice currentDevice].systemVersion.floatValue >= 10.0 && [app respondsToSelector:@selector(openURL:options:completionHandler:)]) {
                
                [app openURL:url options:@{UIApplicationOpenURLOptionUniversalLinksOnly:@(false)}completionHandler:^(BOOL success) {}];
                
                decisionHandler(WKNavigationActionPolicyCancel); return;
                
            }else {
                
#if __IPHONE_OS_VERSION_MIN_REQUIRED < 100000
                [app openURL:url];
#endif
                decisionHandler(WKNavigationActionPolicyCancel); return;
            }
        }
        
        decisionHandler(WKNavigationActionPolicyAllow);
    }
    
    decisionHandler(WKNavigationActionPolicyAllow);
}




#pragma mark - WKScriptMessageHandler
- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message
{
    
}

@end

