//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Esther Rios on 11/27/16.
//  Copyright © 2016 Esther Rios. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)-> Int{
        return 5;
    }
    
    override func tableView(_ tableView:UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        cell.textLabel?.text = "Buy Me!"
        cell.imageView?.image = UIImage(named: "image-cell1")
        return cell
    }
}
