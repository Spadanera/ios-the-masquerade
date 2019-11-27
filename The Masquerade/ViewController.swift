//
//  ViewController.swift
//  The Masquerade
//
//  Created by Nicola Zirilli on 27/11/2019.
//  Copyright © 2019 Nicola Zirilli. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        webView.customUserAgent = "Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_2 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Mobile/14F89 Safari/602.1"
        view = webView
    }

    override func viewDidLoad() {
        let url = URL(string: "http://themasquerade-env.wmujzqm75g.us-east-1.elasticbeanstalk.com")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

