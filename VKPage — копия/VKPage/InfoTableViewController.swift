//
//  InfoTableViewController.swift
//  VKPage
//
//  Created by Alsu Shigapova on 10.12.2017.
//  Copyright © 2017 Alsu Shigapova. All rights reserved.
//

import UIKit

struct Info {
    let birthdayLabel = "День рождения"
    var birthday: String
    let placeOfWorkLabel = "Место работы"
    var placeOfWork: String
    let maritalStatusLabel = "Семейное положение"
    var maritalStatus: String
    let languagesLabel = "Языки"
    var languages: String
    let parentsLabel = "Родители"
    var parents: String
}

struct Contacts {
    let phoneImage = UIImage(named: "1")
    let homeImage = UIImage(named: "2")
    let vkImage = UIImage(named: "3")
    var phoneNumber: String
    var home: String
    var vk: String
}

struct Career {
    var companeName: String
    var placeOfWorkAndYears: String
    var position: String
}

struct Education {
    let highSchoolLabel = "Вуз"
    var hidhScool: String
    let schoolLabel = "Школа"
    var school: String
}

struct Gifts {
    let giftLabel = "12 подарков"
    var gift1Image: UIImage
    var gift2Image: UIImage
    var gift3Image: UIImage
    var gift4Image: UIImage
}

struct OthersInfo {
    let interestingPagesLabel = "Интересные страницы"
    var interestingPages: Int
    let arrowsLabel = ">"
    let notesLabel = "Заметки"
    var notes: Int
    let documentationLabel = "Документы"
    var documentation: Int
}

class InfoTableViewController: UITableViewController {
    var numberOfSections = 7
    var reuseIdentifier = "reuseIdentifier"
    var sectionStatus = [String] ()
    var sectionInfo = [Info] ()
    var sectionContacts = [Contacts] ()
    var sectionCareer = [Career] ()
    var sectionEducation = [Education] ()
    var sectionGifts = [Gifts] ()
    var sectionOthersInfo = [OthersInfo] ()
    var statusArray = ["У меня лапки", "Сессия близко", "Кровать не отпускает на учебу"]
    var birthdayArray = ["9.09.1828", "6.09.1745", "18.08.1954", "3.10.1895"]
    var placeOfWorkArray = ["Президентская ратуша", "SpaceX"]
    var maritalStatusArray = ["Есть друг", "В активном поиске", "В гражданском браке", "Замужем", "Не замужем"]
    var languagesArray = ["Русский", "English", "Татарча", "Deutsch", "Français"]
    var parentsArray = ["Петр Безухов, Наталья Ростова" , "Мастер, Маргарита", "Анна Каренина, Алексей Вронский"]
    var phoneNumberArray = ["007", "89878787263"]
    var homeArray = ["Казань", "Страна снов", "Иннополис", "Буинск"]
    var vkArray = ["super_girl", "Shigapovaa"]
    var companeNameArray = ["Apple", "Wells Fargo"]
    var placeOfWorkAndYearsArray = ["USA, 2007-2013", "Kazan, 2012-2014"]
    var positionArray = ["Neurosurgeon", "iOS Developer", "Head of company"]
    var hidhScoolArray = ["КФУ", "МГУ", "Oxford", "Cambridge"]
    var schoolArray = ["Лицей №177", "Гимназия №7", "Лицей №131"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        return numberOfSections
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        switch section {
        case 0:
            return 1
        case 1:
            return 5
        case 2:
            return 1
        case 3:
            return 1
        case 4:
            return 1
        case 5:
            return 1
        case 6:
            return 3
        default:
            return 0
        }
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath)
//        switch section {
//        case 0:
//            cell.textLabel?.text = "text"
//        case 1:
//            cell.textLabel?.text = "text"
//        case 2:
//            cell.textLabel?.text = "text"
//        case 3:
//            cell.textLabel?.text = "text"
//        case 4:
//            cell.textLabel?.text = "text"
//        case 5:
//            cell.textLabel?.text = "text"
//        case 6:
//            cell.textLabel?.text = "text"
//        default:
//            cell.textLabel?.text = "text"
//        }
        // Configure the cell...
        
        cell.textLabel?.text = "text"
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
