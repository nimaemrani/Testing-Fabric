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
    
    var initialFloatValue: CGFloat = 160.0
    var initialFloatValueY: CGFloat = 135.5
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if numberOfTweets == 0 {
            displayTweet("631879971628183552", xValue: initialFloatValue, yValue: initialFloatValueY)
            numberOfTweets++
        }
        displayTweet("631879971628183552", xValue: initialFloatValue, yValue: initialFloatValueY)
        displayTweet("631879971628183552", xValue: initialFloatValue, yValue: initialFloatValueY)

    }
    
    func displayTweet (tweetID: String, xValue: CGFloat, yValue: CGFloat) {

        if numberOfTweets == 0 {
            
            TWTRAPIClient().loadTweetWithID(tweetID) { (tweet, error) in
            if let unwrappedTweet = tweet {
                let tweetView = TWTRTweetView(tweet: unwrappedTweet)
                tweetView.center = CGPointMake(xValue, yValue)
                self.view.addSubview(tweetView)

                
            } else {
                NSLog("Tweet load error: %@", error!.localizedDescription);
            }
        }
            self.initialFloatValueY = self.initialFloatValueY + 235
    }
        else {
            TWTRAPIClient().loadTweetWithID(tweetID) { (tweet, error) in
                if let unwrappedTweet = tweet {
                    let tweetView = TWTRTweetView(tweet: unwrappedTweet)
                    tweetView.center = CGPointMake(xValue, yValue)
                    self.view.addSubview(tweetView)
                } else {
                    NSLog("Tweet load error: %@", error!.localizedDescription);
                }

            }
            self.initialFloatValueY = self.initialFloatValueY + 235

        }
       
        
    }

}
