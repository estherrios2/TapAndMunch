//
//  ProductsTableViewController.swift
//  GoodAsOldPhones
//
//  Created by Esther Rios on 11/27/16.
//  Copyright © 2016 Esther Rios. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    var products: [Product]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let product1 = Product()
        let product2 = Product()
        let product3 = Product()
        let product4 = Product()
        let product5 = Product()
        
        product1.name = "Zazones Cuisine"
        product1.productImage = "background"
        product1.cellImage = "food"
        
        product2.name = "Mona"
        product2.productImage = "background"
        product2.cellImage = "food"
        
        product3.name = "Desecheo"
        product3.productImage = "background"
        product3.cellImage = "food"
        
        product4.name = "Atlantic Restaurant"
        product4.productImage = "background"
        product4.cellImage = "food"
        
        product5.name = "La Vista Smokehouse"
        product5.productImage = "background"
        product5.cellImage = "food"
        
        
        products = [product1, product2, product3, product4, product5]
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)-> Int{
        if let p = products{
            return p.count
        }
        return 0
    }
    
    override func tableView(_ tableView:UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        
        let product = products?[indexPath.row]
        
        if let p = product{
            cell.textLabel?.text = p.name
            if let i = p.cellImage{
                cell.imageView?.image = UIImage(named: i)
            }
        }
        
        return cell
    }
    
    override func prepare(for segue:UIStoryboardSegue, sender: Any?){
        if segue.identifier == "ShowProduct"{
            let productVC = segue.destination as? ProductViewController
            
            guard let cell = sender as? UITableViewCell,
                  let indexPath = tableView.indexPath(for: cell) else{
                return
            }
            productVC?.product = products?[indexPath.row]
        }
    }
}

