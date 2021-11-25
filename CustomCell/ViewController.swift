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
//        view.backgroundColor = .orange
//        tableView = UITableView()
//        tableView.delegate = self
//        tableView.dataSource = self
//        tableView.frame = view.frame
//        tableView.register(TopStaticCell.self, forCellReuseIdentifier: TopStaticCell.identifier)
//        view.addSubview(tableView)
        
        let myView = MainView(frame: CGRect(x: 0, y: 0, width: 100, height: 200))
        view.addSubview(myView)
        
       
    }


}

//extension ViewController: UITableViewDataSource, UITableViewDelegate {
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        1
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: TopStaticCell.identifier) as! TopStaticCell
//        return cell
//    }
//    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 300
//    }
//    
//}
