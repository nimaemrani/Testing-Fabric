//
//  ViewController.swift
//  Testing Fabric
//
//  Created by Nima Emrani on 2/8/16.
//  Copyright © 2016 Nima Emrani. All rights reserved.
//

import UIKit
import TwitterKit


class SearchTimelineViewController: UIViewController {
    
    var text = String?()
    var numberOfTweets = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if numberOfTweets == 0 {
            displayTweet("631879971628183552")
            numberOfTweets++
        }
        else {
            displayTweet("23423423")
        }
        
    }
    
    func displayTweet (tweetID: String) {
        
        var xValue: CGFloat = 0
        var yValue: CGFloat = 0
        
        if numberOfTweets == 0 {
            
            TWTRAPIClient().loadTweetWithID(tweetID) { (tweet, error) in
            if let unwrappedTweet = tweet {
                let tweetView = TWTRTweetView(tweet: unwrappedTweet)
                let xValueFirstTweet = self.view.center.x
                let yValueFirstTweet = (self.topLayoutGuide.length + tweetView.frame.size.height / 2) + 25
                xValue = xValueFirstTweet
                yValue = yValueFirstTweet
                tweetView.center = CGPointMake(xValueFirstTweet, yValueFirstTweet)
                self.view.addSubview(tweetView)
            } else {
                NSLog("Tweet load error: %@", error!.localizedDescription);
            }
        }
    }
        else {
            TWTRAPIClient().loadTweetWithID(tweetID) { (tweet, error) in
                if let unwrappedTweet = tweet {
                    let tweetView = TWTRTweetView(tweet: unwrappedTweet)
                    tweetView.center = CGPointMake(xValue, yValue + 75)
                    self.view.addSubview(tweetView)
                } else {
                    NSLog("Tweet load error: %@", error!.localizedDescription);
                }
            }
        }
       
        
    }

}
