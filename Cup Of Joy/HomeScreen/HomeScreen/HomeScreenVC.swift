//
//  HomeScreenVC.swift
//  Cup Of Joy
//
//  Created by Tuna Toramanoğlu on 8.05.2023.
//

import UIKit

public class CustomData {
    public let title: String
    public let backgroundImage: UIImage
    public var fontSize: CGFloat
    
    
    init(title: String, backgroundImage: UIImage, fontSize: CGFloat = 10.0) {
        self.title = title
        self.backgroundImage = backgroundImage
        self.fontSize = fontSize
        
    }
}

class HomeScreenVC: UIViewController {
    
    fileprivate let data = [
        CustomData(title: "Bebek Şubesi", backgroundImage: #imageLiteral(resourceName: "BebekŞube.png"), fontSize: 10),
        CustomData(title: "Zorlu Şubesi", backgroundImage: #imageLiteral(resourceName: "ZorluŞube"), fontSize: 10),
        CustomData(title: "Vadi Şubesi", backgroundImage: #imageLiteral(resourceName: "VadiŞube"), fontSize: 10),
        CustomData(title: "Nişantaşı Şubesi", backgroundImage: #imageLiteral(resourceName: "NişantaşıŞube"), fontSize: 10),
        CustomData(title: "Bağdat Şubesi", backgroundImage: #imageLiteral(resourceName: "BağdatŞube"), fontSize: 10),
        CustomData(title: "İstinye Şubesi", backgroundImage: #imageLiteral(resourceName: "İstinyeŞube"), fontSize: 10)
            
    ]
    
    fileprivate let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(CollectionViewCell.self, forCellWithReuseIdentifier: "HomeSVC")
        return cv
    } ()
    
    fileprivate let myLabel: UILabel = {
        let label = UILabel ()
        label.text = "ŞUBELERİMİZ"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 26)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    } ()
    
    fileprivate let button1: UIButton = {
        let button1 = UIButton()
        button1.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        button1.backgroundColor = .red
        button1.setBackgroundImage(UIImage(named: "Latte.png"), for: .normal)
        button1.setTitle("Sütlü Kahveler", for: .normal)
        button1.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        button1.setTitleColor(.white, for: .highlighted)
        button1.addTarget(self, action: #selector(buttonTapped1), for: .touchUpInside)
        button1.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: -120, right: 0)
        button1.layer.cornerRadius = 12
        button1.layer.masksToBounds = true
        button1.translatesAutoresizingMaskIntoConstraints = false
        return button1
    } ()
    fileprivate let button2: UIButton = {
        let button2 = UIButton()
        button2.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        button2.backgroundColor = .red
        button2.setBackgroundImage(UIImage(named: "FiltreKahve.png"), for: .normal)
        button2.setTitle("Sade Kahveler", for: .normal)
        button2.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        button2.setTitleColor(.white, for: .highlighted)
        button2.addTarget(self, action: #selector(buttonTapped2), for: .touchUpInside)
        button2.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: -120, right: 0)
        button2.layer.cornerRadius = 12
        button2.layer.masksToBounds = true
        button2.translatesAutoresizingMaskIntoConstraints = false
        return button2
    } ()
    fileprivate let button3: UIButton = {
        let button3 = UIButton()
        button3.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        button3.backgroundColor = .red
        button3.setBackgroundImage(UIImage(named: "ColdDrip.png"), for: .normal)
        button3.setTitle("Soğuk Kahveler", for: .normal)
        button3.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        button3.setTitleColor(.white, for: .highlighted)
        button3.addTarget(self, action: #selector(buttonTapped3), for: .touchUpInside)
        button3.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: -120, right: 0)
        button3.layer.cornerRadius = 12
        button3.layer.masksToBounds = true
        button3.translatesAutoresizingMaskIntoConstraints = false
        return button3
    } ()
    fileprivate let button4: UIButton = {
        let button4 = UIButton()
        button4.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        button4.backgroundColor = .red
        button4.setBackgroundImage(UIImage(named: "Çay.png"), for: .normal)
        button4.setTitle("Diğer İçecekler", for: .normal)
        button4.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        button4.setTitleColor(.white, for: .highlighted)
        button4.addTarget(self, action: #selector(buttonTapped4), for: .touchUpInside)
        button4.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: -120, right: 0)
        button4.layer.cornerRadius = 12
        button4.layer.masksToBounds = true
        button4.translatesAutoresizingMaskIntoConstraints = false
        return button4
    } ()
    @objc func buttonTapped1() {
        let tableViewController1 = SutluKahvelerVC()
            navigationController?.pushViewController(tableViewController1, animated: true)
        }
    @objc func buttonTapped2() {
        let tableViewController2 = SadeKahvelerVC()
            navigationController?.pushViewController(tableViewController2, animated: true)
        }
    @objc func buttonTapped3() {
        let tableViewController3 = IcedKahvelerVC()
            navigationController?.pushViewController(tableViewController3, animated: true)
        }
    @objc func buttonTapped4() {
        let tableViewController4 = DigerIceceklerVC()
            navigationController?.pushViewController(tableViewController4, animated: true)
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(collectionView)
        view.addSubview(myLabel)
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
        view.addSubview(button4)
        
        collectionView.backgroundColor = .systemGray6
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "homeSVC")
        collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 130).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -450).isActive = true
        collectionView.heightAnchor.constraint(equalToConstant: view.frame.width/2).isActive = true
        
        myLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 140).isActive = true
        myLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        myLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        myLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        myLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        
        button1.topAnchor.constraint(equalTo: collectionView.bottomAnchor, constant: 20).isActive = true
        button1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        button1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -210).isActive = true
        button1.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        button2.topAnchor.constraint(equalTo: collectionView.bottomAnchor, constant: 20).isActive = true
        button2.leadingAnchor.constraint(equalTo: button1.leadingAnchor, constant: 190).isActive = true
        button2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        button2.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        button3.topAnchor.constraint(equalTo: button1.bottomAnchor, constant: 20).isActive = true
        button3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        button3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -210).isActive = true
        button3.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        button4.topAnchor.constraint(equalTo: button2.bottomAnchor, constant: 20).isActive = true
        button4.leadingAnchor.constraint(equalTo: button3.leadingAnchor, constant: 190).isActive = true
        button4.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        button4.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }
}
    
extension HomeScreenVC: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/2.5, height: collectionView.frame.width/2)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "homeSVC", for: indexPath) as! CollectionViewCell
        cell.data = self.data[indexPath.item]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.item {
        case 0:
            let bebekVC = BebekBranchVC()
            navigationController?.pushViewController(bebekVC, animated: true)
        case 1:
            let zorluVC = ZorluBranchVC()
            navigationController?.pushViewController(zorluVC, animated: true)
        case 2:
            let vadiVC = VadiBranchVC()
            navigationController?.pushViewController(vadiVC, animated: true)
        case 3:
            let nisantasiVC = NisantasiBranchVC()
            navigationController?.pushViewController(nisantasiVC, animated: true)
        case 4:
            let bagdatVC = BagdatBranchVC()
            navigationController?.pushViewController(bagdatVC, animated: true)
        case 5:
            let istinyeVC = IstinyeBranchVC()
            navigationController?.pushViewController(istinyeVC, animated: true)
                
            default:
                break
        }
    }
}
    


class CollectionViewCell: UICollectionViewCell {
    
    var data: CustomData? {
        didSet {
            guard let data = data else { return }
            img1.image = data.backgroundImage
            titleLabel.text = data.title
            
        }
    }
    fileprivate let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
        
    } ()
    
    fileprivate let img1: UIImageView = {
        let img2 = UIImageView()
        img2.translatesAutoresizingMaskIntoConstraints = false
        img2.contentMode = .scaleAspectFill
        img2.clipsToBounds = true
        img2.layer.cornerRadius = 12
        return img2
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(img1)
        contentView.addSubview(titleLabel)
        
        img1.translatesAutoresizingMaskIntoConstraints = false
        img1.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        img1.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        img1.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        img1.heightAnchor.constraint(equalToConstant: 170).isActive = true
        img1.bottomAnchor.constraint(equalTo: titleLabel.topAnchor, constant: -10).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
