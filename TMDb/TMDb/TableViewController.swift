//
//  TableViewController.swift
//  TMDb
//
//  Created by NurekeMacOS on 10/30/18.
//  Copyright © 2018 NurekeMacOS. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UIViewController {
    
    @IBOutlet weak var tableUI: UITableView!
    let tableItems = ["Популярные","Скоро на экранах"]
    let movieList = ["Titanic", "Fast and Furious", "Alladin"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableUI.dataSource=self
        tableUI.delegate=self
        
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        if(tableItems[indexPath.row]=="Популярные"){
            
        }
    }
}

extension TableViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")! as UITableViewCell
        
        cell.textLabel!.text = tableItems[indexPath.row]
        
        return cell;
    }
    
    
    
    
    
}
