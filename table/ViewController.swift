//
//  ViewController.swift
//  table
//
//  Created by Shin Ota on 10/27/20.
//  Copyright © 2020 Shin Ota. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.dataSource = self
        tableView.delegate = self
    }
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5 // 5個のデータがあるという意味
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // 再利用可能な cell を得る
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // 値を設定する.
        cell.textLabel!.text = "Row \(indexPath.row)"

        return cell
    }
}
2つの必須のデリゲートメソッドのうち、

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5 // 5個のデータがあるという意味
    }
上記のメソッドでは、return 5で5を返しているので5行のテーブルになります。

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // 再利用可能な cell を得る
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // 値を設定する.
        cell.textLabel!.text = "Row \(indexPath.row)"

        return cell
    }

}

