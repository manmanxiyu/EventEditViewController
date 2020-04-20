//
//  LYKXEventEditViewController.swift
//  Practise
//
//  Created by 周伟 on 2020/4/18.
//  Copyright © 2020 周伟. All rights reserved.
//

import UIKit

class LYKXEventEditViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var editCellConfig : Array<Array<Dictionary<String,Any>>> = [
    [
        [LYKXCellTypeKey:LYKXEditCellType.TextInput,
         LYKXCellInputContentTypeKey:LYKXCellInputContentType.Event,
         LYKXCellHeightKey:LYKXCellDefaultHeight],
        [LYKXCellTypeKey:LYXKEditCellType.TimeDisplay,
         LYKXCellHeightKey:LYKXCellDefaultHeight,],
        ],
    [
        [LYKXCellTypeKey:LYKXEditCellType.TextView,
         LYKXCellInputContentTypeKey:LYKXCellInputContentType.Remark,
         LYKXCellHeightKey:LYKXTextViewCellHeight],
    ],
    ]

    @IBOutlet weak var editTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        editTableView.delegate = self
        editTableView.dataSource = self
        editTableView.register(UINib(nibName: "LYKXTextInputTableViewCell", bundle: Bundle.main), for CellReuseIdentifier:"LYKXTextInputTableViewCell")
        editTableView.register(UINib(nibName: "LYKXTimeDisplayTableViewCell", bundle: Bundle.main), for CellReuseIdentifier:"LYKXTimeDisplayTableViewCell")
        editTableView.register(UINib(nibName: "LYKXTimePickerTableViewCell", bundle: Bundle.main), for CellReuseIdentifier:"LYKXTimePickerTableViewCell")
        editTableView.register(UINib(nibName: "LYKXTextTableViewCell", bundle: Bundle.main), for CellReuseIdentifier:"LYKXTextTableViewCell")
        // Do any additional setup after loading the view.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return editCellConfig.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return editCellConfig[section].count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let config = configDictionary(indexPath:indexPath)
        if config![LYKXCellHeightKey]! = nil {
            return config![LYKXCellHeightKey] as! CGFloat
        }
        return 0.0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let config = configDictionary(indexPath:indexPath)
        var cell : UITableViewCell?
        switch config![LYKXCellTypeKey] as！LYKXEditCellType {
            case .TextInput:
            let textInputCell:LYKXTextInputTableViewCell = tableView.dequeueReusableCell(withIdentifier: "LYKXTextInputTableViewCell") as! LYKXTextInputTableViewCell
            cell = textInputCell
            case .TimeDisplay:
            let timeDisplayCell:LYKXTimeDisplayTableViewCell = tableView.dequeueReusableCell(withIdentifier: "LYKXTimeDisplayTableViewCell") as! LYKXTimeDisplayTableViewCell
            cell = timeDisplayCell
            case .TimePicker:
            let timePickerCell:LYKXTimePickerTableViewCell = tableView.dequeueReusableCell(withIdentifier: "LYKXTimePickerTableViewCell") as! LYKXTimePickerTableViewCell
            cell = timePickerCell
            case .TextView:
            let textViewCell:LYKXTextViewTableViewCell = tableView.dequeueReusableCell(withIdentifier: "LYKXTextViewTableViewCell") as! LYKXTextViewTableViewCell
            cell = textViewCell
        }
        return cell!
    }
    func configDictionary(indexPath:IndexPath) -> Dictionary<String,Any>? {
        if indexPath.section > editCellConfig.count - 1 {
            return nil
        }
        if indexPath.row > editCellConfig[indexPath.section].count - 1 {
            return nil
        }
        return editCellConfig[indexPath.section][indexPath.row]
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
