//
//  ContactViewController.swift
//  GoodAsOldPhones
//
//  Created by Esther Rios on 11/19/16.
//  Copyright © 2016 Esther Rios. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(scrollView)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        scrollView.contentSize = CGSize(width: 375, height:800)
    }



}
