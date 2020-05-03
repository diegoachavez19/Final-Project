//
//  TabOneVC.swift
//  Final Project
//
//  Created by Diego Chavez on 5/2/20.
//  Copyright © 2020 Diego Chavez. All rights reserved.
//

import UIKit

class TabOneVC: UIViewController {

    @IBOutlet weak var viewText: UITextView!
    
    @IBAction func pushMe(_ sender: Any) {
         viewText.text = "Welcome to the app that track your stats from games like fortnite, rocket league, call of duty, and more! Compare your stats to you friends or your favorite streamer or just to see your progress within the game."
    }
    
    
    
        
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
