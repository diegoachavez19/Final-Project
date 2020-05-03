//
//  TabThreeVC.swift
//  Final Project
//
//  Created by Diego Chavez on 5/2/20.
//  Copyright © 2020 Diego Chavez. All rights reserved.
//

import UIKit

class TabThreeVC: UIViewController {

    @IBOutlet weak var information: UITextField!
    @IBOutlet weak var results: UITextView!
    
    
    @IBAction func saveResults(_ sender: Any) {
        let csvLine:String = "\(information.text!)\n"
        
        let paths = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)
        let docDir:String=paths[0]
        let resultsFile:String=(docDir as NSString).appendingPathComponent("results.csv")
                                                    
        if !FileManager.default.fileExists(atPath: resultsFile) {
            FileManager.default.createFile(atPath: resultsFile,contents: nil, attributes: nil)
        }
        
        let fileHandle:FileHandle=FileHandle(forUpdatingAtPath:resultsFile)!
        fileHandle.seekToEndOfFile()
        fileHandle.write(csvLine.data(using: String.Encoding.utf8)!)
        fileHandle.closeFile()
        
        information.text = ""
        
    }
    
    
    @IBAction func displayResults(_ sender: Any) {
        let paths = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)
                      let docDir:String=paths[0] as String
                      
                      let resultsFile:String=(docDir as NSString).appendingPathComponent("results.csv")
                      
                      
                      
                      
                      if FileManager.default.fileExists(atPath: resultsFile) {
                          let fileHandle:FileHandle = FileHandle(forReadingAtPath:resultsFile)!
                          let resultsData:String!=NSString(data: fileHandle.availableData, encoding: String.Encoding.utf8.rawValue)! as String
                          fileHandle.closeFile()
                          
                          
                          results?.text=resultsData
                      }
                      else
                      {
                          // file does not exist
                      }
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
       override func didReceiveMemoryWarning() {
              super.didReceiveMemoryWarning()
              // Dispose of any resources that can be recreated.
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
