//
//  NisantasiBranchVC.swift
//  Cup Of Joy
//
//  Created by Tuna Toramanoğlu on 8.05.2023.
//

import UIKit

class NisantasiBranchVC: UIViewController {

    static let identifier = "NişantaşıBranchViewControllerIdentifier"

    let imageView5 = UIImageView()
    let labels = [UILabel(), UILabel(), UILabel()]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        func showNişantaşıBranchViewController() {
            let nisantasiVC = NisantasiBranchVC()
            nisantasiVC.modalPresentationStyle = .fullScreen
            navigationController?.pushViewController(nisantasiVC, animated: true)
            
        }
        func nisantasiButtonTapped(_ sender: UIButton) {
            let nisantasiVC = NisantasiBranchVC()
            nisantasiVC.modalPresentationStyle = .fullScreen
            navigationController?.pushViewController(nisantasiVC, animated: true)
        }
        
        
        imageView5.frame = CGRect(x: 50, y: 100, width: 100, height: 100)
        imageView5.image = UIImage(named: "NişantaşıŞube.png")
        view.addSubview(imageView5)
        
        labels[0].frame = CGRect(x: 50, y: 220, width: 200, height: 50)
        labels[0].text = "Label 1"
        view.addSubview(labels[0])
        
        labels[1].frame = CGRect(x: 50, y: 270, width: 300, height: 50)
        labels[1].text = "Label 2"
        view.addSubview(labels[1])
        
        labels[2].frame = CGRect(x: 50, y: 320, width: 200, height: 50)
        labels[2].text = "Label 3"
        view.addSubview(labels[2])
        
        labels[0].text = "Nişantaşı Şubesi"
        labels[1].text = "Meşrutiyet, Şair Nigar SK. NO:11, Şişli/İstanbul"
        labels[2].text = "0212 231 48 31"
        
        labels[0].font = UIFont.boldSystemFont(ofSize: 24)
        labels[0].numberOfLines = 0
        labels[1].font = UIFont.systemFont(ofSize: 16)
        labels[1].numberOfLines = 0
        labels[2].font = UIFont.systemFont(ofSize: 16)
        labels[2].numberOfLines = 0
        
        imageView5.translatesAutoresizingMaskIntoConstraints = false
        imageView5.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        imageView5.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        imageView5.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        imageView5.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imageView5.heightAnchor.constraint(equalToConstant: 350).isActive = true
        
        labels[0].translatesAutoresizingMaskIntoConstraints = false
        labels[0].topAnchor.constraint(equalTo: imageView5.bottomAnchor, constant: 20).isActive = true
        labels[0].leadingAnchor.constraint(equalTo: imageView5.leadingAnchor, constant: 5).isActive = true
        labels[0].trailingAnchor.constraint(equalTo: imageView5.trailingAnchor, constant: -50).isActive = true
        labels[0].heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        labels[1].translatesAutoresizingMaskIntoConstraints = false
        labels[1].topAnchor.constraint(equalTo: labels[0].bottomAnchor, constant: 5).isActive = true
        labels[1].leadingAnchor.constraint(equalTo: labels[0].leadingAnchor, constant: 2).isActive = true
        labels[1].trailingAnchor.constraint(equalTo: labels[0].trailingAnchor, constant: -50).isActive = true
        labels[1].heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        labels[2].translatesAutoresizingMaskIntoConstraints = false
        labels[2].topAnchor.constraint(equalTo: labels[1].bottomAnchor, constant: 5).isActive = true
        labels[2].leadingAnchor.constraint(equalTo: labels[1].leadingAnchor, constant: 2).isActive = true
        labels[2].trailingAnchor.constraint(equalTo: labels[1].trailingAnchor, constant: -50).isActive = true
        labels[2].heightAnchor.constraint(equalToConstant: 50).isActive = true

    }
}
