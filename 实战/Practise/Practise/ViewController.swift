//
//  ViewController.swift
//  Practise
//
//  Created by 周伟 on 2020/4/18.
//  Copyright © 2020 周伟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addNewEvent(_ sender: UIBarButtonItem) {
        let vc = LYKXEventEditViewController()
        self.navigationController?.present(UINavigationController(rootViewController: vc),animated: true,completion: {
            
        })
    }
    
 
}

