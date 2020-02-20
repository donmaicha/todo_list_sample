//
//  ViewController.swift
//  TODO_Sample
//
//  Created by 福島拓希 on 2020/02/19.
//  Copyright © 2020 donmaicha. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoListArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let TodoCell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "TodoCell", for: indexPath)
        //変数の中身を作る
        TodoCell.textLabel!.text = todoListArray[indexPath.row]
        //戻り値の設定（表示する中身)
        return TodoCell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //追加画面で入力した内容を取得する
        if UserDefaults.standard.object(forKey: "TodoList") != nil {
            todoListArray = UserDefaults.standard.object(forKey: "TodoList") as! [String]
        }
    }


}

