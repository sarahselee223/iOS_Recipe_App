//
//  ViewController.swift
//  Recipe1
//
//  Created by Sarah Lee on 3/2/21.
//

import UIKit

class ViewController: UITableViewController {

    let array = ["item1", "item2", "item3"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 70
        tableView.backgroundView = UIImageView(image: UIImage(named: "cozy copy"))
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        navigationController?.navigationBar.alpha = 0.5
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // If cells go out of view, we can reuse the cells
        let cell = tableView.dequeueReusableCell(withIdentifier: "customcell", for: indexPath)
        if(indexPath.item % 2 == 0){
            cell.backgroundColor = UIColor.white.withAlphaComponent(0.1)
            cell.textLabel?.backgroundColor = UIColor.white.withAlphaComponent(0.0)
        } else {
            cell.backgroundColor = UIColor.white.withAlphaComponent(0.2)
            cell.textLabel?.backgroundColor = UIColor.white.withAlphaComponent(0.0)
        }
        cell.textLabel?.textColor = UIColor.white
        cell.textLabel?.text = array[indexPath.item]
        return cell
    }
}

