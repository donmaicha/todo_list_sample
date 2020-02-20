//
//  AddController.swift
//  TODO_Sample
//
//  Created by 福島拓希 on 2020/02/19.
//  Copyright © 2020 donmaicha. All rights reserved.
//

import UIKit

var todoListArray = [String]()

class AddController: UIViewController {
    @IBOutlet weak var todoTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addButtonClicked(_ sender: Any) {
        todoListArray.append(todoTextField.text!)
        todoTextField.text = ""
        UserDefaults.standard.set(todoListArray, forKey: "TodoList")
    }
    @IBAction func backButtonClicked(_ sender: Any) {
        // モーダルウインドウを閉じる
        dismiss(animated: true, completion: nil)
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
