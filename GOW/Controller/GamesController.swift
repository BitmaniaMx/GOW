//
//  GamesController.swift
//  GOW
//
//  Created by Rafael González on 05/08/23.
//

import UIKit

class GamesController: UIViewController {

    let posters = Array(0...7)
    
    @IBOutlet var posterImage: UIImageView!
    
    @IBOutlet var posterPageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        posterPageControl.numberOfPages = posters.count
        posterImage.image = UIImage(named: String(posters.first!))
    }
    
    
//    @IBAction func pageControllerValueChaged(_ sender: Any) {
//        posterImage.image = UIImage(named: String(posters[posterPageControl.currentPage]))
//    }
    
    @IBAction func rightSwipeDone(_ sender: Any) {
        print("swipe", posterPageControl.currentPage)
        
        if posterPageControl.currentPage == 0  {
            posterPageControl.currentPage = 7
            posterImage.image = UIImage(named: String(posters[posterPageControl.currentPage]))
        }
        else{
            posterPageControl.currentPage = posterPageControl.currentPage - 1
            posterImage.image = UIImage(named: String(posters[posterPageControl.currentPage]))
        }
    }
    
    
    @IBAction func pageControl(_ sender: UIPageControl) {
        print("touch", posterPageControl.currentPage)
        posterImage.image = UIImage(named: String(posters[posterPageControl.currentPage]))
    }
}
