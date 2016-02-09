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
        
        self.performSegueWithIdentifier("DetailSegue", sender: self)

    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        let destinationVC = segue.destinationViewController as! SearchTimelineViewController
        
        destinationVC.text = self.searchBar.text
    }
    
}

    
    

