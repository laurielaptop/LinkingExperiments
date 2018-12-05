//
//  WebViewController.m
//  TheInternalObjCStaticLibrary
//
//  Created by Laurie Keith on 05/12/2018.
//  Copyright © 2018 Laurie Laptop. All rights reserved.
//

#import "InternalWebViewController.h"

@interface InternalWebViewController ()

@property (nonatomic, strong) WKWebView *webView;
@property (nonatomic, strong) UIActivityIndicatorView *activityIndicator;

@end

@implementation InternalWebViewController

// MARK: - View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Web View";
    self.webView = [[WKWebView alloc] initWithFrame:self.view.bounds];
    self.webView.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
    self.webView.navigationDelegate = self;
    [self.view addSubview:self.webView];
    self.activityIndicator = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle: UIActivityIndicatorViewStyleWhiteLarge];
    self.activityIndicator.color = self.view.tintColor;
    self.activityIndicator.hidesWhenStopped = YES;
    self.activityIndicator.center = self.view.center;
    [self.view addSubview:self.activityIndicator];
    [self.activityIndicator startAnimating];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSURL *url = [NSURL URLWithString:@"https://maps.google.com"];
    if (url) {
        NSURLRequest *request = [NSURLRequest requestWithURL: url];
        [self.webView loadRequest:request];
    }
}

// MARK: - WKNavigationDelegate

- (void)webView:(WKWebView *)webView didFinishNavigation:(WKNavigation *)navigation {
    [self.activityIndicator stopAnimating];
}

@end