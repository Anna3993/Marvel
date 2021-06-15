//
//  LoadView.swift
//  Marvel
//
//  Created by Anna on 14/06/2021.
//

import UIKit

class LoadView: UIView {
    @IBOutlet weak var loadImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        loadGif()
    }
    
    private func loadGif() {
        loadImageView.loadGif()
    }
    
}
