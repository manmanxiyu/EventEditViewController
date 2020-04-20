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

    enum LYKXCellInputContentType {
         case Event
         case Remark
     }
    enum LUKXEditCellType {
        case TextInput
        case TimeDisplay
        case TimePicker
        case TextView
    }
    let LYKXCellDefaultHeight : CGFloat = 44.0
    let LYKXTimePickerCellHeight : CGFloat = 215.0
    let LYKXTextViewCellHeight : CGFloat = 180.0
    let LYKXCellTypeKey = "CellType"
    let LYKXCellHeightKey = "CellHeight"
    let LYKXCellInputContentTypeKey = "CellInputContentType"
    @IBAction func addNewEvent(_ sender: UIBarButtonItem) {
        let vc = LYKXEventEditViewController()
        self.navigationController?.present(UINavigationController(rootViewController: vc),animated: true,completion: {
            
        })
    }
    
 
}

