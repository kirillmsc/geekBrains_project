//
//  GroupsTableViewController.swift
//  homeWork_03
//
//  Created by k.kochemasov on 10/04/2019.
//  Copyright © 2019 k.kochemasov. All rights reserved.
//

import UIKit

class GroupsTableViewController: UITableViewController {

    public var groups: [Groups] = [
        Groups(group: "SLOT"),
        Groups(group: "OnAir"),
        Groups(group: "SomeGroup"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groups.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: GroupsCell.reuseId, for: indexPath) as? GroupsCell else {fatalError("Cell cannot be dequeued")}
        
        cell.groupsCell.text = groups[indexPath.row].group

        return cell
    }
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let delete = UIContextualAction(style: .destructive, title: "Delete") { (action, sourceView, completionHandler) in
            print("index path of delete: \(indexPath)")
            completionHandler(true)
        }
        let swipeActionConfig = UISwipeActionsConfiguration(actions: [delete])
        swipeActionConfig.performsFirstActionWithFullSwipe = false
        return swipeActionConfig
    }
    
    @IBAction func addGroup(segue: UIStoryboardSegue) {
        if let recomendTableController = segue.source as? RecomendTableController,
            let indexPath = recomendTableController.tableView.indexPathForSelectedRow {
            let newGroup = recomendTableController.recomendations[indexPath.row]
            
            guard !groups.contains(where: { group -> Bool in
                return group.group == newGroup.group
            }) else {return}
            self.groups.append(newGroup)
            tableView.reloadData()
        }
    }
    
}

