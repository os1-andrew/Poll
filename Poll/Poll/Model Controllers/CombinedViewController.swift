//
//  CombinedViewController.swift
//  Poll
//
//  Created by Andrew Dhan on 7/26/18.
//  Copyright © 2018 Andrew Liao. All rights reserved.
//

import UIKit

class CombinedViewController: UIViewController, VoteControllerProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "embedToVoting" || segue.identifier == "embedToResults" {
            if let viewController = segue.destination as? VoteControllerProtocol {
                viewController.voteController = voteController
            }
            
        }
    }
    
    var voteController: VoteController?
}
