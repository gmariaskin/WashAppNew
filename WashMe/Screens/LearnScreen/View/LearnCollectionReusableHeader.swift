//
//  LearnCollectionReusableView.swift
//  WashMe
//
//  Created by Gleb on 25.08.2023.
//

import UIKit

class LearnCollectionReusableHeader: UICollectionReusableView {
    
    static let identifier = "LearnHeader"
    
    public let headerLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
       // label.font = R.font.kanitSemiBold(size: 30)
        return label
    }()
    
    public func cofigure() {
        addSubview(headerLabel)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        headerLabel.frame = bounds
    }
}
