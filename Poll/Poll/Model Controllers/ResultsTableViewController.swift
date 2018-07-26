//
//  ResultsTableViewController.swift
//  Poll
//
//  Created by Andrew Liao on 7/26/18.
//  Copyright © 2018 Andrew Liao. All rights reserved.
//

import UIKit

class ResultsTableViewController: UITableViewController, VoteControllerProtocol {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return voteController?.votes.count ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResultsCell", for: indexPath)
        let vote = voteController?.votes[indexPath.row]
        cell.textLabel?.text = vote?.name
        cell.detailTextLabel?.text = vote?.response
        return cell
    }
 
    var voteController: VoteController?

}
