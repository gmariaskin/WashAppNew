//
//  TabBarController.swift
//  WashMe
//
//  Created by Gleb on 12.08.2023.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homePage = self.createNav(with: "Home", and: R.image.homeImage(), vc: HomePageViewController())
        let userProfile = self.createNav(with: "Profile", and: R.image.profileImage(), vc: UserProfileViewController())
        let learn = self.createNav(with: "Learn", and: R.image.questionImage(), vc: LearnViewController())
        
        self.viewControllers = [homePage,userProfile,learn]
       
        navigationItem.hidesBackButton = true
        
    }
    
   
    
    private func createNav(with title: String, and image: UIImage?, vc: UIViewController) -> UINavigationController {
        
        let nav = UINavigationController(rootViewController: vc)
        
        nav.tabBarItem.title = title
        nav.tabBarItem.image = image
     
        return nav
    }
}

