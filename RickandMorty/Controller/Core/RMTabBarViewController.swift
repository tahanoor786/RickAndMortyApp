//
//  ViewController.swift
//  RickandMorty
//
//  Created by Taha Noor on 5/18/23.
//

import UIKit

final class RMTabBarViewController: UITabBarController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setupTabbar()
        // Do any additional setup after loading the view.
    }

    private func setupTabbar(){
        //Initializing the tabbar Items
        let charactersVC = RMCharacterViewController()
        let locationsVC = RMLocationViewController()
        let episodesVC = RMEpisodeViewController()
        let settingsVC = RMLocationViewController()
        
        //setting up the display titles of the navigation bar
        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic

        
        //embedding in the navigation link
        let nav1 = UINavigationController(rootViewController: charactersVC)
        let nav2 = UINavigationController(rootViewController: locationsVC)
        let nav3 = UINavigationController(rootViewController: episodesVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        nav1.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "globe"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)

        
        
        //adding large titles in the view controllers
        for nav in [nav1,nav2,nav3,nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }

        //setting up the tabbar items
        setViewControllers([nav1,
                            nav2,
                            nav3,
                            nav4
                           ], animated: true)
        
        

    }

}

