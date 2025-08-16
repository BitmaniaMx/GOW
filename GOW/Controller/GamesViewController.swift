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
        if gamePosterController.currentPage == gamePosters.count - 1 {
            gamePosterController.currentPage = 0
            gamePoster.image =  UIImage(named:String(gamePosterController.currentPage))
        }
        else{
            gamePosterController.currentPage = gamePosterController.currentPage + 1
            gamePoster.image =  UIImage(named:String(gamePosterController.currentPage))
        }
    }
    
    
    @IBAction func rightSwipeDone(_ sender: Any) {
        print("Right swipe done!!")
        if gamePosterController.currentPage == gamePosters.first {
                   gamePosterController.currentPage = gamePosters.last!
                   gamePoster.image = UIImage(named: String(gamePosterController.currentPage))
               } else {
                   gamePosterController.currentPage -= 1
                   gamePoster.image = UIImage(named: String(gamePosterController.currentPage))
               }
    }
    
}
