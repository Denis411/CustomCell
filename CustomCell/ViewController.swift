//
//  ViewController.swift
//  CustomCell
//
//  Created by I am the owner on 11/25/21.
//

import UIKit

class ViewController: UIViewController {

    var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
        
    }
    
    func setUpTableView() {
        tableView = UITableView(frame: view.frame)
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        let nib = UINib(nibName: "StaticTVCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: StaticTVCell.identifier)
    }

}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: StaticTVCell.identifier) as! StaticTVCell
//        cell.label.text = "Fuck this shit"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        1000
        
    }

}

