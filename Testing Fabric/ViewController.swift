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
        
        let client = TWTRAPIClient()
        self.dataSource = TWTRSearchTimelineDataSource(searchQuery: "#cats", APIClient: client)
    }
}