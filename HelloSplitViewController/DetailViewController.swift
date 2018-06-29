//
//  DetailViewController.swift
//  HelloSplitViewController
//
//  Created by 林奕德 on 2018/4/10.
//  Copyright © 2018年 AppsAdamLin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!

    var infoFromMasterView:String?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = infoFromMasterView
    detailDescriptionLabel.text = infoFromMasterView
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    


}

