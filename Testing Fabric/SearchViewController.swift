//
//  SearchViewController.swift
//  Testing Fabric
//
//  Created by Nima Emrani on 2/8/16.
//  Copyright © 2016 Nima Emrani. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    @IBOutlet var searchBar: UISearchBar!
    
    var searchText = String?()
    var screenCounter : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func button(sender: AnyObject) {
        
        var searchText = String?()
        searchText = self.searchBar.text!
        screenCounter++

    }
}

    
    

