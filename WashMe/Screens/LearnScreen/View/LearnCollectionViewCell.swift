//
//  LearnCollectionViewCell.swift
//  WashMe
//
//  Created by Gleb on 25.08.2023.
//

import UIKit

class LearnCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "LearnCell"
    
    private let learnImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "house")
        imageView.backgroundColor = R.color.textFieldColor()
        imageView.contentMode = .scaleAspectFit
        imageView.layer.cornerRadius = 20
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(learnImage)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        learnImage.frame = CGRect(x: 0, y: 0, width: contentView.frame.width, height: contentView.frame.height)
    }
    
    public func configure(image: UIImage){
        learnImage.image = image
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        learnImage.image = nil
    }
}
