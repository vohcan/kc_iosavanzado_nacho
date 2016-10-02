//
//  LibraryTableViewController.swift
//  HackerBooks2
//
//  Created by Nacho Villaverde Montalvo on 2/10/16.
//  Copyright © 2016 vohcan. All rights reserved.
//

import UIKit

class LibraryTableViewController: CoreDataTableViewController {
    
    


}
//MARK: -Data Source

extension LibraryTableViewController{
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellId = "BookCell"
        
        let b = fetchedResultsController?.object(at: indexPath) as! Book
        
        var cell = tableView.dequeueReusableCell(withIdentifier: cellId)
        if cell == nil{
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellId)
            
        }
        
        //configure
        cell?.textLabel?.text = b.title ?? "New Book"
        
        //devolverla
        return cell!
        
        
    }
}
