//
//  RMCharacterViewController.swift
//  RickandMorty
//
//  Created by Taha Noor on 5/18/23.
//

import UIKit
/// controller to show and search character
final class RMCharacterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
    
        let request = RMRequest(endpoint: .character,
        pathComponents: ["1"]
        )
        print(request.url)
    }
    

   

}
