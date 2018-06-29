//
//  MasterViewController.swift
//  HelloSplitViewController
//
//  Created by 林奕德 on 2018/4/10.
//  Copyright © 2018年 AppsAdamLin. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    let appleProduct = ["IPhone","IPad","IPod","Apple TV","Apple Watch","Air Pod","HomePod"]
   


    override func viewDidLoad() {
        super.viewDidLoad()
       splitViewController?.preferredDisplayMode = .allVisible //設定IPad預設 會顯示 左邊欄位選項
        
    }

    override func viewWillAppear(_ animated: Bool) {
        clearsSelectionOnViewWillAppear = splitViewController!.isCollapsed
        super.viewWillAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    


    }

    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail"{
            let dvc = segue.destination as? UINavigationController
            let detailViewController =  dvc?.topViewController as? DetailViewController
            if let selectedRow =  tableView.indexPathForSelectedRow?.row{
               detailViewController?.infoFromMasterView = appleProduct[selectedRow]
            }
        }
        
    }

    // MARK: - Table View

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appleProduct.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel!.text = appleProduct[indexPath.row]
        return cell
    }

    

}

