//
//  SubscribersTableViewController.swift
//  VKPage
//
//  Created by Alsu Shigapova on 05.12.2017.
//  Copyright © 2017 Alsu Shigapova. All rights reserved.
//

import UIKit

struct User {
    var name: String
    var image: UIImage
}
class SubscribersTableViewController: UITableViewController {
    var users = [User]()
    var reuseIdentifier = "reuseIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        users.append(User(name: "Екатерина Суховская", image: UIImage(named: "00")!))
        users.append(User(name: "Татьяна Лазер", image: UIImage(named: "01")!))
        users.append(User(name: "Алина Федорова", image: UIImage(named: "02")!))
        users.append(User(name: "Айдар Мулюков", image: UIImage(named: "03")!))
        users.append(User(name: "Кристина Стрельник", image: UIImage(named: "04")!))
        users.append(User(name: "Ринат Шарафеев", image: UIImage(named: "05")!))
        users.append(User(name: "Саша Елисина", image: UIImage(named: "06")!))
        users.append(User(name: "Анна Куликова", image: UIImage(named: "07")!))
        users.append(User(name: "Азат Кудашев", image: UIImage(named: "08")!))
        users.append(User(name: "Хасан Мингалиев", image: UIImage(named: "09")!))
        users.append(User(name: "Аленка Лаврова", image: UIImage(named: "10")!))
        users.append(User(name: "Тёма Филиппов", image: UIImage(named: "11")!))
        users.append(User(name: "Кирилл Захаров", image: UIImage(named: "12")!))
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return users.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)

        // Configure the cell...
        let model = users[indexPath.row]
        cell.textLabel?.text = model.name
        cell.imageView?.image = model.image
        
        return cell
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
