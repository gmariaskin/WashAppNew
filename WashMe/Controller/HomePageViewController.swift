//
//  HomePageViewController.swift
//  WashMe
//
//  Created by Gleb on 12.08.2023.
//

import UIKit
import SnapKit

let categories = ["Pants", "T-shits", "Jackets", "Socks", "Shorts", "Bedsheets"]


class HomePageViewController: UIViewController {
    
    var category: Category = Category()

    var collectionView: UICollectionView!

    let addItemButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        collectionView = UICollectionView(frame: CGRect(x: 0, y: 100, width: Int(UIScreen.main.bounds.width), height: 400), collectionViewLayout: layout)
        
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.delegate = self
        collectionView.dataSource = self
        self.collectionView.register(UINib(nibName: "ItemCell", bundle: nil), forCellWithReuseIdentifier: "ItemCell")
        collectionView.isPagingEnabled = true
        collectionView.showsHorizontalScrollIndicator = false
        
        setupUI()
        setupSubViews()
        setupConstraints()
    }
    
    private func setupUI(){
        
        view.backgroundColor = .white
        
        addItemButton.backgroundColor = R.color.textFieldColor()
        addItemButton.titleLabel?.text = "Add"
        addItemButton.titleLabel?.textColor = .red
    
    }
    
    private func setupSubViews() {
       view.addSubview(collectionView)
        view.addSubview(addItemButton)
   
    }
    
    private func setupConstraints() {
        
       
    }

    
}



extension HomePageViewController:  UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return category.itemsInCategory.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath) as! ItemCell
        let item = category.itemsInCategory[indexPath.item]
        cell.setupCell(item: item)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
     
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}


