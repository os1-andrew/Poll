//
//  VoteController.swift
//  Poll
//
//  Created by Andrew Liao on 7/26/18.
//  Copyright © 2018 Andrew Liao. All rights reserved.
//

import Foundation

class VoteController {
    
    //MARK - Functions
    func createVote(withName: String, response: String){
        votes.append(Vote(name: withName, response: response))
    }
    
    //MARK - Properties
    private(set) var votes = [Vote]()
    
}
