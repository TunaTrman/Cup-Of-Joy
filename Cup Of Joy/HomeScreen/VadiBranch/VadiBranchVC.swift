//
//  VadiBranchVC.swift
//  Cup Of Joy
//
//  Created by Tuna Toramanoğlu on 8.05.2023.
//

import UIKit

class VadiBranchVC: UIViewController {

    static let identifier = "VadiBranchViewControllerIdentifier"
    
    let imageView3 = UIImageView()
    let labels = [UILabel(), UILabel(), UILabel()]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        func showVadiBranchViewController() {
            let vadiVC = VadiBranchVC()
            vadiVC.modalPresentationStyle = .fullScreen
            navigationController?.pushViewController(vadiVC, animated: true)
            
        }
        func vadiButtonTapped(_ sender: UIButton) {
            let vadiVC = VadiBranchVC()
            vadiVC.modalPresentationStyle = .fullScreen
            navigationController?.pushViewController(vadiVC, animated: true)
        }
        
        imageView3.frame = CGRect(x: 50, y: 100, width: 100, height: 100)
        imageView3.image = UIImage(named: "VadiŞube.png")
        view.addSubview(imageView3)
        
        labels[0].frame = CGRect(x: 50, y: 220, width: 200, height: 50)
        labels[0].text = "Label 1"
        view.addSubview(labels[0])
        
        labels[1].frame = CGRect(x: 50, y: 270, width: 300, height: 50)
        labels[1].text = "Label 2"
        view.addSubview(labels[1])
        
        labels[2].frame = CGRect(x: 50, y: 320, width: 200, height: 50)
        labels[2].text = "Label 3"
        view.addSubview(labels[2])
        
        labels[0].text = "Vadi Şubesi"
        labels[1].text = "Ayazağa Caddesi, Cendere SK. 109/C-161 Maslak Sarıyer, İstanbul"
        labels[2].text = "0212 801 96 00"
        
        labels[0].font = UIFont.boldSystemFont(ofSize: 24)
        labels[0].numberOfLines = 0
        labels[1].font = UIFont.systemFont(ofSize: 16)
        labels[1].numberOfLines = 0
        labels[2].font = UIFont.systemFont(ofSize: 16)
        labels[2].numberOfLines = 0
        
        imageView3.translatesAutoresizingMaskIntoConstraints = false
        imageView3.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        imageView3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        imageView3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        imageView3.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imageView3.heightAnchor.constraint(equalToConstant: 350).isActive = true
        
        labels[0].translatesAutoresizingMaskIntoConstraints = false
        labels[0].topAnchor.constraint(equalTo: imageView3.bottomAnchor, constant: 20).isActive = true
        labels[0].leadingAnchor.constraint(equalTo: imageView3.leadingAnchor, constant: 5).isActive = true
        labels[0].trailingAnchor.constraint(equalTo: imageView3.trailingAnchor, constant: -50).isActive = true
        labels[0].heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        labels[1].translatesAutoresizingMaskIntoConstraints = false
        labels[1].topAnchor.constraint(equalTo: labels[0].bottomAnchor, constant: 5).isActive = true
        labels[1].leadingAnchor.constraint(equalTo: labels[0].leadingAnchor, constant: 2).isActive = true
        labels[1].trailingAnchor.constraint(equalTo: labels[0].trailingAnchor, constant: -40).isActive = true
        labels[1].heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        labels[2].translatesAutoresizingMaskIntoConstraints = false
        labels[2].topAnchor.constraint(equalTo: labels[1].bottomAnchor, constant: 5).isActive = true
        labels[2].leadingAnchor.constraint(equalTo: labels[1].leadingAnchor, constant: 2).isActive = true
        labels[2].trailingAnchor.constraint(equalTo: labels[1].trailingAnchor, constant: -50).isActive = true
        labels[2].heightAnchor.constraint(equalToConstant: 50).isActive = true
            
    }
}

    

