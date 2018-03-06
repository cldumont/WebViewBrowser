//
//  ViewController.swift
//  WebViewBrowser
//
//  Created by Craig Dumont on 3/6/18.
//  Copyright © 2018 Craig Dumont. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var forwardButton: UIButton!
    @IBOutlet weak var webView: WKWebView!
    
    @IBOutlet weak var urlTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let urlString:String = "https://www.apple.com"
        let url:URL = URL(string: urlString)!
        let urlRequest: URLRequest = URLRequest(url: url)
        webView.load(urlRequest)
        
        urlTextField.text = urlString
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        let urlString:String = urlTextField.text!
        let url:URL = URL(string: urlString)!
        let urlRequest: URLRequest = URLRequest(url: url)
        webView.load(urlRequest)
        
        textField.resignFirstResponder()
        
        return true
    }

}

