//
//  TableViewController.swift
//  TableViewApp
//
//  Created by Mac on 04.04.2021.
//

import UIKit

class TableViewController: UITableViewController {

    var descriptionOfPhoto = ["FirstCart", "FirstWin" , "firstWorldChamp" , "secondWorldChamp", "thirdWorldChamp"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
         self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return descriptionOfPhoto.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = descriptionOfPhoto[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        cell.imageView?.image = UIImage(imageLiteralResourceName: descriptionOfPhoto[indexPath.row])
        
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }


    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            descriptionOfPhoto.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        }
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detail" {
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let detailsVC = segue.destination as? DetailViewController
                detailsVC?.photoTitle = descriptionOfPhoto[indexPath.row]
            }
        }
    }
}
