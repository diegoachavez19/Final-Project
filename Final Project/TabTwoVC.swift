//
//  TabTwoVC.swift
//  Final Project
//
//  Created by Diego Chavez on 5/2/20.
//  Copyright © 2020 Diego Chavez. All rights reserved.
//

import UIKit
import WebKit

class TabTwoVC: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let myURL = URL(string:"https://tracker.gg/")
                      let myRequest = URLRequest(url: myURL!)
                      webView.load(myRequest)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
