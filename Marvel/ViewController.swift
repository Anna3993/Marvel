//
//  ViewController.swift
//  Marvel
//
//  Created by Anna on 14/06/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickShowCharacters(_ sender: Any) {
        if Utils.isConnectedToNetwork() {
            let characterListVC = CharacterListViewController()
            characterListVC.modalPresentationStyle = .fullScreen
            self.present(characterListVC, animated: true)
        } else {
            Utils.showAlert(self, description: "No tienes conexión a internet")
        }
    }
    
}

