//
//  VotingViewController.swift
//  Poll
//
//  Created by Andrew Liao on 7/26/18.
//  Copyright © 2018 Andrew Liao. All rights reserved.
//

import UIKit

class VotingViewController: UIViewController, VoteControllerProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submitVote(_ sender: Any) {
        guard let name = nameLabel.text,
            let response = responseLabel.text else {return}
        
        voteController?.createVote(withName: name, response: response)
        nameLabel.text = ""
        responseLabel.text = ""
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    var voteController: VoteController?
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var responseLabel: UITextField!
}
