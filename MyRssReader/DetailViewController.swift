//
//  DetailViewController.swift
//  MyRssReader
//
//  Created by higuchiryunosuke on 2020/01/08.
//  Copyright © 2020 higuchiryunosuke. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    var link:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = URL(string: self.link) {
            let request = URLRequest(url: url)
            self.webView.load(request)
        }
    }
}
