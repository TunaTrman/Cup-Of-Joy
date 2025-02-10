//
//  IstinyeBranchVC.swift
//  Cup Of Joy
//
//  Created by Tuna Toramanoğlu on 8.05.2023.
//

import UIKit

class IstinyeBranchVC: UIViewController {

    static let identifier = "İstinteBranchViewControllerIdentifier"

    let imageView4 = UIImageView()
    let labels = [UILabel(), UILabel(), UILabel()]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        func showİstinyeBranchViewController() {
            let istinyeVC = IstinyeBranchVC()
            istinyeVC.modalPresentationStyle = .fullScreen
            navigationController?.pushViewController(istinyeVC, animated: true)
            
        }
        func istinyeButtonTapped(_ sender: UIButton) {
            let isitnyeVC = IstinyeBranchVC()
            isitnyeVC.modalPresentationStyle = .fullScreen
            navigationController?.pushViewController(isitnyeVC, animated: true)
        }
        
        imageView4.frame = CGRect(x: 50, y: 100, width: 100, height: 100)
        imageView4.image = UIImage(named: "İstinyeŞube.png")
        view.addSubview(imageView4)
        
        labels[0].frame = CGRect(x: 50, y: 220, width: 200, height: 50)
        labels[0].text = "Label 1"
        view.addSubview(labels[0])
        
        labels[1].frame = CGRect(x: 50, y: 270, width: 300, height: 50)
        labels[1].text = "Label 2"
        view.addSubview(labels[1])
        
        labels[2].frame = CGRect(x: 50, y: 320, width: 200, height: 50)
        labels[2].text = "Label 3"
        view.addSubview(labels[2])
        
        labels[0].text = "İstnye Park Şubesi"
        labels[1].text = "Pınar MAH. Katar CAD. NO: 11 İç Kapı: 417 İstinye Park AVM"
        labels[2].text = "0212 278 49 00"
        
        labels[0].font = UIFont.boldSystemFont(ofSize: 24)
        labels[0].numberOfLines = 0
        labels[1].font = UIFont.systemFont(ofSize: 16)
        labels[1].numberOfLines = 0
        labels[2].font = UIFont.systemFont(ofSize: 16)
        labels[2].numberOfLines = 0
        
        imageView4.translatesAutoresizingMaskIntoConstraints = false
        imageView4.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        imageView4.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        imageView4.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        imageView4.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imageView4.heightAnchor.constraint(equalToConstant: 350).isActive = true
        
        labels[0].translatesAutoresizingMaskIntoConstraints = false
        labels[0].topAnchor.constraint(equalTo: imageView4.bottomAnchor, constant: 20).isActive = true
        labels[0].leadingAnchor.constraint(equalTo: imageView4.leadingAnchor, constant: 5).isActive = true
        labels[0].trailingAnchor.constraint(equalTo: imageView4.trailingAnchor, constant: -50).isActive = true
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
