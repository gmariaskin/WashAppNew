//
//  UserProfileViewController.swift
//  WashMe
//
//  Created by Gleb on 12.08.2023.
//

import UIKit
import SnapKit

class UserProfileViewController: UIViewController {
    
    let logOutButton = UIButton()
    let userPic = UIImageView()
    let usernameLabel = UILabel()
    let languageButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupSubviews()
        setupUI()
        setupConstraints()
        
    }
    
    private func setupUI(){
        
        logOutButton.setTitle("Logout", for: .normal)
        logOutButton.setTitleColor(.red, for: .normal)
        logOutButton.titleLabel?.textAlignment = .center
        logOutButton.addTarget(self, action: #selector(logOut), for: .touchUpInside)
        logOutButton.backgroundColor =  R.color.textFieldColor()
        logOutButton.setTitleColor(.white, for: .highlighted)
        logOutButton.layer.cornerRadius = 10
        logOutButton.titleLabel?.font = R.font.sfProDisplayBold(size: 15)
        logOutButton.contentHorizontalAlignment = .left
        let spacing: CGFloat = 10.0
        logOutButton.contentEdgeInsets = UIEdgeInsets(top: 0, left: spacing, bottom: 0, right: 0 )
        
        userPic.image = R.image.profileImage()
        
        usernameLabel.font = R.font.sfProDisplayBold(size: 30)
        usernameLabel.textAlignment = .center
        usernameLabel.textColor = .black
        usernameLabel.text = "User"
        
        languageButton.setTitle("Select language", for: .normal)
        languageButton.setTitleColor(.black, for: .normal)
        languageButton.titleLabel?.font = R.font.sfProDisplayBold(size: 15)
        languageButton.setImage(UIImage(named: "globe"), for: .normal)
        languageButton.backgroundColor = R.color.textFieldColor()
        languageButton.layer.cornerRadius = 10
        languageButton.contentHorizontalAlignment = .left
        languageButton.contentEdgeInsets = UIEdgeInsets(top: 0, left: spacing, bottom: 0, right: 0 )
    }
    
    //MARK: - СМОТРЕТЬ ТУТ
    @objc func logOut() {
        
        let defaults = UserDefaults()
        defaults.set(false, forKey: Keys.isLoggedIn)
        self.dismiss(animated: true)
    
    }
    
    
    private func setupConstraints() {
        
      
        
        userPic.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(70)
            make.width.equalTo(100)
            make.height.equalTo(100)
            
        }
        
        languageButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.8)
            make.height.equalTo(50)
            make.top.equalTo(usernameLabel).offset(50)
        }
        
        logOutButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.8)
            make.height.equalTo(50)
            make.top.equalTo(languageButton.snp.bottom).offset(20)
        }
        
        usernameLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(userPic.snp.bottom).offset(20)
        }
    }
    
    private func setupSubviews() {
        
        view.addSubview(logOutButton)
        view.addSubview(userPic)
        view.addSubview(usernameLabel)
        view.addSubview(languageButton)
    }
    
    private func setupView() {
        
        view.backgroundColor = .white
    }
}
