//
//  LearnViewController.swift
//  WashMe
//
//  Created by Gleb on 12.08.2023.
//

import UIKit
import SnapKit

class LearnViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    
    private var collectionView: UICollectionView?
    var categorizedLaundrySigns: [String: [Sign]] = [:]
    var sectionTitles: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 2
        layout.minimumInteritemSpacing = 2
        layout.itemSize = CGSize(width: (view.frame.size.width/3)-4, height: (view.frame.size.width/3)-4)
        layout.sectionHeadersPinToVisibleBounds = false
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        guard let collectionView = collectionView else {
            return
        }
        
        for sign in laundrySigns {
                   if categorizedLaundrySigns[sign.category] == nil {
                       categorizedLaundrySigns[sign.category] = []
                   }
                   categorizedLaundrySigns[sign.category]?.append(sign)
               }
               sectionTitles = categorizedLaundrySigns.keys.sorted()

        
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(LearnCollectionViewCell.self, forCellWithReuseIdentifier: LearnCollectionViewCell.identifier)
        collectionView.register(LearnCollectionReusableHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: LearnCollectionReusableHeader.identifier)
        collectionView.frame = view.bounds
        collectionView.allowsSelection = true
        
        view.addSubview(collectionView)
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return sectionTitles.count
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let sectionTitle = sectionTitles[section]
        return categorizedLaundrySigns[sectionTitle]?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let sectionTitle = sectionTitles[indexPath.section]
        let signsInSection = categorizedLaundrySigns[sectionTitle] ?? []
        let sign = signsInSection[indexPath.row]

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: LearnCollectionViewCell.identifier, for: indexPath) as! LearnCollectionViewCell
        cell.configure(image: sign.icon)
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: LearnCollectionReusableHeader.identifier, for: indexPath) as! LearnCollectionReusableHeader
            let sectionTitle = sectionTitles[indexPath.section]
            header.headerLabel.text = sectionTitle
            header.cofigure()
            return header
        }
        return UICollectionReusableView()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: 50) 
    }

    
    
}
