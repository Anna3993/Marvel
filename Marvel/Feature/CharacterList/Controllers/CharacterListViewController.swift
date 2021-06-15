//
//  CharacterListViewController.swift
//  Marvel
//
//  Created by Anna on 14/06/2021.
//

import UIKit

class CharacterListViewController: BaseViewController {
    @IBOutlet weak var characterListView: UIView!
    
    let characterDataContainerVM = CharacterDataContainerViewModel()
    
    @IBAction func clickBack(_ sender: Any) {
        gotoBack()
    }
    
    override func loadData() {
        showLoadView()
        characterDataContainerVM.getData {
            self.showCharacterTableView()
        } loadError: {
            self.showErrorView()
        }
    }
    
    override func showLoadView() {
        if let subview = self.loadView("LoadView") as? LoadView {
            self.addSubview(view: characterListView, subview: subview)
        }
    }
    
    override func showErrorView() {
        if let subview = self.loadView("ErrorView") as? ErrorView {
            subview.characterVC = self
            self.addSubview(view: characterListView, subview: subview)
        }
    }
    
    private func showCharacterTableView() {
        if let subview = self.loadView("CharacterTableView") as? CharacterTableView {
            subview.characterListVC = self
            self.addSubview(view: characterListView, subview: subview)
        }
    }
}
