//
//  ViewController.swift
//  Testing Fabric
//
//  Created by Nima Emrani on 2/8/16.
//  Copyright © 2016 Nima Emrani. All rights reserved.
//

import UIKit
import TwitterKit


class SearchTimelineViewController: TWTRTimelineViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let text: String? = otherViewController.searchText
        

        let otherViewController: SearchViewController = SearchViewController(nibName: nil, bundle: nil)
        let counter: Int = otherViewController.screenCounter

        let text: String? = otherViewController.searchText
       // print(text)
        let client = TWTRAPIClient()
        self.dataSource = TWTRSearchTimelineDataSource(searchQuery: "\(text!)", APIClient: client)
        

        
    }
}
