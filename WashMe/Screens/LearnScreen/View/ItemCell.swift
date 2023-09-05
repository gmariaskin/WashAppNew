//
//  ItemCell.swift
//  WashMe
//
//  Created by Gleb on 18.08.2023.
//

import UIKit
import SnapKit

class ItemCell: UICollectionViewCell {
    
    @IBOutlet weak var itemImage: UIImageView!
 
    @IBOutlet weak var itemNameLabel: UILabel!
    
    @IBOutlet weak var itemColorLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
      
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.itemImage.image = nil
        
   
    }
    
    func setupCell(item: Item) {
        
        itemImage.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.top.equalToSuperview()
            make.height.equalToSuperview().multipliedBy(0.8)
        }
        
        itemNameLabel.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.top.equalTo(itemImage.snp.bottom).offset(10)
            make.height.equalTo(20)
        }
        
        itemColorLabel.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.top.equalTo(itemNameLabel.snp.bottom).offset(10)
            make.height.equalTo(20)
        }
        
        self.itemNameLabel.textAlignment = .center
        self.itemColorLabel.textAlignment = .center
        self.itemNameLabel.font = R.font.sfProDisplayBold(size: 20)
        self.itemColorLabel.font = R.font.sfProDisplayRegular(size: 15)
        self.itemColorLabel.textColor = .gray
        
        
        self.itemImage.image = item.image
        self.itemImage.contentMode = .scaleAspectFill
        self.itemNameLabel.text = item.name
        self.itemColorLabel.text = item.color
    }
}
