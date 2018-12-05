//
//  ChessViewController.m
//  TheExternalStaticObjCFramework
//
//  Created by Laurie Keith on 05/12/2018.
//  Copyright © 2018 Laurie Laptop. All rights reserved.
//

#import "ChessViewController.h"

@interface ChessViewController ()

@property (nonatomic, strong) WKWebView *webView;

@end

@implementation ChessViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // WKWebViewConfiguration *configuration = [[WKWebViewConfiguration alloc] init];
    self.webView = [[WKWebView alloc] initWithFrame:self.view.frame]; //configuration:configuration];
    self.webView.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
    self.webView.scrollView.scrollEnabled = NO;
    [self.view addSubview:self.webView];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear: animated];
    NSString *frameworksPath = [[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:@"TheExternalObjCStaticFramework.framework"];
    NSBundle *bundle = [NSBundle bundleWithPath:frameworksPath];
    NSString *path = [bundle pathForResource:@"chess" ofType:@"html"];
    if (path) {
        NSURL *url = [[NSURL alloc] initFileURLWithPath: path];
        NSURLRequest *request = [[NSURLRequest alloc] initWithURL:url];
        [self.webView loadRequest: request];
    }
}

@end
