//
//  WeaponsViewController.swift
//  GOW
//
//  Created by Rafael Gonzalez on 15/08/25.
//

import UIKit

class WeaponsViewController: UIViewController {
    
    
    @IBOutlet weak var weaponsTableView: UITableView!
    
    var arrayWeapons : [Weapon] = []
       //    CGO Weapons
           let cgoWeapons : [Weapon] = [
               Weapon(
                   name: "weapon.name.lancer",
                   description: "weapon.description.lancer",
                   poster: "Mark1LancerAssaultRifle"
                   ),
               Weapon(
                   name: "weapon.name.lancer2",
                   description: "weapon.description.lancer2",
                   poster: "LancerMk2"
                   ),
               Weapon(
                   name: "weapon.name.sniper",
                   description: "weapon.description.sniper",
                   poster: "LongshotSniperRifle"

                   ),
               Weapon(
                   name: "weapon.name.hammer_of_dawn",
                   description: "weapon.description.hammer_of_dawn",
                   poster: "HammerOfDawn"
                   ),
               Weapon(
                   name: "weapon.name.mx8",
                   description: "weapon.description.mx8",
                   poster: "SnubPistol"
               )
               ]
           
       //    Locus Weapons
           let locusWeapons : [Weapon] = [
               Weapon(
               name: "weapon.name.boomshot",
               description: "weapon.description.boomshot",
               poster: "Boomshot"
           ),
               Weapon(
                   name: "weapon.name.hammerburstii",
                   description: "weapon.description.hammerburstii",
                   poster: "HammerburstII"
               ),
           Weapon(
               name: "weapon.name.mulcher",
               description: "weapon.description.mulcher",
               poster: "Mulcher"
           ),
           Weapon(
               name: "weapon.name.bolo_grenade",
               description: "weapon.description.bolo_grenade",
               poster: "BoloGrenade"
           ),
           Weapon(
               name: "weapon.name.boltok",
               description: "weapon.description.boltok",
               poster: "BoltokPistol"
           )
           ]


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let tabBarItem = self.tabBarItem.tag
        if tabBarItem == Constats.CGO {
            arrayWeapons = cgoWeapons
        }
        else{
            arrayWeapons = locusWeapons
        }
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


extension WeaponsViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayWeapons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! WeaponCell
        
        cell.weaponName.text = arrayWeapons[indexPath.row].name.localized
        cell.weaponPoster.image = UIImage(named: arrayWeapons[indexPath.row].poster)
        cell.weaponDescription.text = arrayWeapons[indexPath.row].description.localized
        
        return cell
    }
    
    
}
