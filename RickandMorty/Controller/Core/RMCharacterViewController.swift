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
    
        RMService.shared.execute(.listCharactersRequest, expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print("Total: "+String(model.info.count))
                print("Total Result: "+String(model.results.count))

            case .failure(let error):
                print(String(describing: error))
                
            }
        }
    }
    

   

}
