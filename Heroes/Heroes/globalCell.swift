//
//  globalCell.swift
//  Heroes
//
//  Created by Dioni Miramontes Gallegos on 19/03/21.
//

import UIKit

class globalCell: UICollectionViewCell {
    
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.layer.cornerRadius = 3
        imageView.layer.masksToBounds = true
        label.layer.cornerRadius = 3
        label.layer.masksToBounds = true
        cardView.layer.cornerRadius = 3
        cardView.layer.masksToBounds = true
    }
    
    
}
