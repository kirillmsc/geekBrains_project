//
//  FriendsViewController.swift
//  homeWork_03
//
//  Created by k.kochemasov on 10/04/2019.
//  Copyright © 2019 k.kochemasov. All rights reserved.
//

import UIKit

class FriendsViewController: UITableViewController, UISearchBarDelegate {
    
    @IBOutlet var searchBar: UISearchBar!
    
    var searchController: UISearchController!
    let friends: [Friends] = [
        Friends(name: "Nikita", surname: "Surkot"),
        Friends(name: "Vasiliy", surname: "Ivaev"),
        Friends(name: "Ann", surname: "Kiunova"),
        Friends(name: "Vladimir", surname: "Vorotin"),
        Friends(name: "Maks", surname: "Volchinin"),
        Friends(name: "Alex", surname: "Minin"),
        Friends(name: "Dima", surname: "Volkov"),
        Friends(name: "Kir", surname: "Klimin"),
        Friends(name: "Anton", surname: "Gerov"),
        Friends(name: "German", surname: "Solomov"),
        Friends(name: "Dima", surname: "Voinov"),
        Friends(name: "Maks", surname: "Minin"),
        Friends(name: "Dima", surname: "Solomov"),
        Friends(name: "Kir", surname: "Voinov"),
        Friends(name: "Dima", surname: "Gerov"),
        Friends(name: "Maks", surname: "Solomov"),
        Friends(name: "Maks", surname: "Voinov")
    ]

    var firstNameLetter = [String]()
    var friendsDict = [String : [Friends]]()
    var searchFriend = [Friends]()
    var search = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let tapGR = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        //tableView.addGestureRecognizer(tapGR)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        sortedSections()
        
        //        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWasHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        //        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    private func sortedSections() {
        firstNameLetter = []
        friendsDict = [:]
        
        for friend in friends {
            let friendNameKey = String(friend.name.prefix(1))
            if var friendValue = friendsDict[friendNameKey] {
                friendValue.append(friend)
                friendsDict[friendNameKey] = friendValue
            } else {
                friendsDict[friendNameKey] = [friend]
            }
        }
        
        firstNameLetter = [String](friendsDict.keys)
        firstNameLetter = firstNameLetter.sorted(by: {$0 < $1})
        
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        if search {
            return 1
        } else {
            return firstNameLetter.count
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if search {
            return searchFriend.count
        } else {
            let friendNameKey = firstNameLetter[section]
            if let friendValue = friendsDict[friendNameKey] {
                return friendValue.count
            }
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: FriendsCell.reuseId, for: indexPath) as? FriendsCell else { fatalError("Cell cannot be dequeued")}
        if search {
            cell.friendsLabel.text = searchFriend[indexPath.row].name
            cell.surnameLabel.text = searchFriend[indexPath.row].surname
        } else {
            let friendNameKey = firstNameLetter[indexPath.section]
            if let friendValue = friendsDict[friendNameKey] {
                cell.friendsLabel.text = friendValue[indexPath.row].name
                cell.surnameLabel.text = friendValue[indexPath.row].surname
            }
            //        cell.friendnameLabel.text = friends[indexPath.row].friendName
            //        cell.friendphotoImage.image = UIImage(named: friends[indexPath.row].friendImageName)
        }
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if search {
            return nil
        } else {
            return firstNameLetter[section]
        }
    }
    
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        if search {
            return nil
        } else {
            return firstNameLetter
        }
    }
    
    // Override to support editing the table view.
    //    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
    //        if editingStyle == .delete {
    //            friends.remove(at: indexPath.row)
    //            tableView.deleteRows(at: [indexPath], with: .fade)
    //        }
    //    }
    
    // MARK: - Navigation
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "Show Photo",
//            let photoVC = segue.destination as? PhotosOfFriendsCVController,
//            let indexPath = tableView.indexPathForSelectedRow {
//            let friendName = friends[indexPath.row].friendName
//
//            photoVC.friendName = friendName
//        }
//    }
    
    @objc private func keyboardWasHidden(notification: Notification) {
        let contentInsets = UIEdgeInsets.zero
        tableView.contentInset = contentInsets
    }
    
    @objc private func hideKeyboard() {
        tableView.endEditing(true)
    }
    
    func searchBar (_ searchBar: UISearchBar, textDidChange searchText: String) {
        tableView.tableHeaderView = searchBar
        searchFriend = friends.filter({$0.name.prefix(searchText.count) == searchText})
        search = true
        tableView.reloadData()
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        search = false
        searchBar.text = ""
        hideKeyboard()
        tableView.reloadData()
    }
    
}



