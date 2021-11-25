//
//  ViewController.swift
//  CustomCell
//
//  Created by I am the owner on 11/25/21.
//

import UIKit

class ViewController: UIViewController {

    var tableView: UITableView!
    var firstCellHeight: CGFloat = 150
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myView = MainView(frame: CGRect(x: 0, y: 0, width: 150, height: 300))
        view.addSubview(myView)
    }

}

