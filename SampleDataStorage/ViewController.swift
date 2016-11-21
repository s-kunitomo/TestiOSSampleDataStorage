//
//  ViewController.swift
//  SampleDataStorage
//
//  Created by 國友翔次 on 2016/11/20.
//  Copyright © 2016年 com.kunitomo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let userDefaults = UserDefaults.standard
        if let value = userDefaults.string(forKey: "text") {
            textField.text = value
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapActionButton(_ sender: Any) {
        let userDefaults = UserDefaults.standard
        userDefaults.set(textField.text, forKey: "text")
        userDefaults.synchronize()
    }
}

