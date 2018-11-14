//
//  WebViewController.swift
//  TheExternalSwiftStaticLibrary
//
//  Created by Laurie Keith on 14/11/2018.
//  Copyright © 2018 Laurie Laptop. All rights reserved.
//

import UIKit
import WebKit

open class WebViewController: UIViewController, WKNavigationDelegate {
    
    // MARK: - Controller Properties
    
    var webView: WKWebView!
    var activityIndicator: UIActivityIndicatorView!
    
    // MARK: - View Lifecycle
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Web View"
        self.webView = WKWebView(frame: self.view.bounds)
        self.webView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.webView.navigationDelegate = self
        view.addSubview(self.webView)
        self.activityIndicator = UIActivityIndicatorView(style: .whiteLarge)
        self.activityIndicator.color = self.view.tintColor
        self.activityIndicator.hidesWhenStopped = true
        self.activityIndicator.center = self.view.center
        view.addSubview(self.activityIndicator)
        self.activityIndicator.startAnimating()
    }

    override open func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        guard let url = URL(string: "https://giphy.com/explore/funny-cute-cat") else {
            return
        }
        let request = URLRequest(url: url)
        self.webView.load(request)
    }
    
    // MARK: - WKNavigationDelegate
    
    public func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        self.activityIndicator.stopAnimating()
    }
    
}
