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
                        title:"menu.option.videogames",
                        image:"gamecontroller.fill",
                        segue:"gamesSegue")
                    , MenuOption(
                        title:"menu.option.weapons",
                        image:"shield.fill",
                        segue:"weaponsSegue")
                    , MenuOption(
                        title:"menu.option.characters",
                        image:"person.crop.rectangle.stack.fill",
                        segue:"charactersSegue")
                    ,MenuOption(
                        title:"menu.option.merchandise",
                        image:"shippingbox.fill",
                        segue:"merchandiseSegue")
                ]

    

    override func viewDidLoad() {
        super.viewDidLoad()

        for family in UIFont.familyNames {
                    if family == "CGFLocustResistance" || family == "Coalition" {
                        print("Familia de fuentes: \(family)")
                    }
                    for name in UIFont.fontNames(forFamilyName: family) {
                        if name == "CGFLocustResistance" || family == "Coalition" {
                            print(" - Fuente: \(name)")
                        }
                    }
                }
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
        cell.menuLabel.setCustomFont(fontName: "CGF Locust Resistance", style: .title1)
        cell.menuLabel.text = menuOptions[indexPath.row].title.localized

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
