//
//  ViewController.swift
//  UIBarButtonItemDemo
//
//  Created by Chhaileng Peng on 12/29/18.
//  Copyright © 2018 Chhaileng Peng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func BarButtonClick(_ sender: Any) {
        print("Click...")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let btn = UIBarButtonItem(title: "Help", style: .plain, target: self, action: #selector(buttonClick))
        
        let label = UILabel()
        label.text = "Hello"
        label.sizeToFit()
        let infoLabel = UIBarButtonItem(customView: label)
        
        navigationItem.leftBarButtonItems = [btn, infoLabel]
        
        let backItem = UIBarButtonItem()
        backItem.title = "Back"
        navigationItem.backBarButtonItem = backItem
    }
    
    @objc func buttonClick() {
        print("Button click")
    }


}

