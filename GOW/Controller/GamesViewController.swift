//
//  GamesViewController.swift
//  GOW
//
//  Created by Rafael Gonzalez on 15/08/25.
//

import UIKit

class GamesViewController: UIViewController {
    
    let gamePosters = Array(0...7)

    @IBOutlet weak var gamePoster: UIImageView!
    
    @IBOutlet weak var gamePosterController: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        gamePosterController.numberOfPages = gamePosters.count
        gamePoster.image = UIImage(named: String(gamePosters.first!))
    }
    

    
    @IBAction func leftSwipeDone(_ sender: Any) {
        print("Left swipe done!!")
    }
    
    
    @IBAction func rightSwipeDone(_ sender: Any) {
        print("Right swipe done!!")
    }
    
}
