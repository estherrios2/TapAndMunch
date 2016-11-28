//
//  ProductViewController.swift
//  GoodAsOldPhones
//
//  Created by Esther Rios on 11/19/16.
//  Copyright © 2016 Esther Rios. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {

    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productNameLabel.text = "1937 Desk Phone"
        productImageView.image = #imageLiteral(resourceName: "phone-fullscreen3")
    }
    
    @IBAction func addToCartPressed(_ sender: AnyObject) {
        print("Button Tapped")
    }
    
}
