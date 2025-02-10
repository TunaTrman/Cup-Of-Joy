//
//  TabBarViewController.swift
//  Cup Of Joy
//
//  Created by Tuna Toramanoğlu on 8.05.2023.
//

import UIKit

class TabBarViewController: UITabBarController, UITabBarControllerDelegate {

    private let label: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.font = .systemFont(ofSize: 24, weight: .semibold)
        label.numberOfLines = 2
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "GOOD COFFEE"
        view.backgroundColor = .white
        navigationItem.hidesBackButton = true
        self.delegate = self
        setupTabs()
        setupUI()
        
        AuthService.shared.fetchUser { [weak self] user, error in
            guard let self = self else { return }
            if let error = error {
                AlertManager.showFetchingUserError(on: self, with: error)
                return
            }
            if let user = user {
                self.label.text = ""
            }
        }
        
    }
    private func setupUI() {
        self.view.backgroundColor = .systemBackground
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(didTapLogout))
        self.view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        ])
    }
    @objc private func didTapLogout(){
        AuthService.shared.signOut { [weak self] error in
            guard let self = self else { return }
            if let error = error {
                AlertManager.showLogoutError(on: self, with: error)
                return
            }
            if let sceneDelegate = self.view.window?.windowScene?.delegate as? SceneDelegate {
                sceneDelegate.checkAuthentication()
            }
        }
    }
    private func setupTabs() {
                
        let homeVC = HomeScreenVC()
        let qrVC = QrScreenVC()
        let settingsVC = SettingsScreenVC()
        
        let nav1 = UINavigationController(rootViewController: homeVC)
        let nav2 = UINavigationController(rootViewController: qrVC)
        let nav3 = UINavigationController(rootViewController: settingsVC)
        
        nav1.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "HomeIcon.png"), tag: 0)
        nav2.tabBarItem = UITabBarItem(title: "QR", image: UIImage(named: "QrIcon.png"), tag: 1)
        nav3.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(named: "SettingsIcon.png"), tag: 2)
        
        self.viewControllers = [nav1, nav2, nav3]

    }

}
