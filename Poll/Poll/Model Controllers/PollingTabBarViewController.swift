//
//  PollingTabBarViewController.swift
//  Poll
//
//  Created by Andrew Dhan on 7/26/18.
//  Copyright © 2018 Andrew Liao. All rights reserved.
//

import UIKit

class PollingTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        passVoteControllerToChildViewControllers()
        // Do any additional setup after loading the view.
    }

    
    func passVoteControllerToChildViewControllers() {
        guard let childVCs = viewControllers else {return}
        for childVC in childVCs {
            if let vc = childVC as? VoteControllerProtocol{
                vc.voteController = voteController
            }
        }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    // MARK: Properties
    let voteController = VoteController()
    

}
