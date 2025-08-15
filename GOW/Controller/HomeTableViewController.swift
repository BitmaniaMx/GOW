//
//  HomeTableViewController.swift
//  GOW
//
//  Created by Rafael Gonzalez on 15/08/25.
//

import UIKit

class HomeTableViewController: UITableViewController {
    
    @IBOutlet var menuTableView: UITableView!
    
    let menuOptions : [MenuOption] = [
            MenuOption(
                title:"Videogames",
                image:"gamecontroller.fill",
                segue:"gamesSegue")
            , MenuOption(
                title:"Weapons",
                image:"shield.fill",
                segue:"weaponsSegue")
            , MenuOption(
                title:"Characters",
                image:"person.crop.rectangle.stack.fill",
                segue:"charactersSegue")
            ,MenuOption(
                title:"Merchandise",
                image:"shippingbox.fill",
                segue:"merchandiseSegue")
        ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return menuOptions.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        // Configure the cell...
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MenuOptionCell
        cell.menuImage.image = UIImage(systemName: menuOptions[indexPath.row].image)
        cell.menuLabel.text = menuOptions[indexPath.row].title

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        guard menuOptions[indexPath.row].segue != "" else {
            return
        }
        performSegue(withIdentifier: menuOptions[indexPath.row].segue, sender: self)
        
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
