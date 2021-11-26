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
    let myView = MainView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myView)
        myViewConstraints()
    }
    
    func myViewConstraints() {
        myView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        myView.topAnchor.constraint(equalTo: view.topAnchor),
        myView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        myView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        myView.trailingAnchor.constraint(equalTo: view.trailingAnchor)])
    }

}

