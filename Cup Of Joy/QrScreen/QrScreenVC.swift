//
//  QrScreenVC.swift
//  Cup Of Joy
//
//  Created by Tuna Toramanoğlu on 8.05.2023.
//

import UIKit

class QrScreenVC: UIViewController {
    private let qrView = {
        let view = UIView()
        view.backgroundColor = .systemBlue
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 10.0
        view.clipsToBounds = true
        return view
    } ()
    
    private let imgView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .systemBlue
        imageView.layer.cornerRadius = 10.0
        imageView.clipsToBounds = true
        return imageView
    } ()
    private let qrImageView: UIImageView = {
        let qrImageView = UIImageView()
        qrImageView.contentMode = .scaleAspectFit
        qrImageView.translatesAutoresizingMaskIntoConstraints = false
        qrImageView.backgroundColor = .systemBlue
        qrImageView.layer.cornerRadius = 10.0
        qrImageView.clipsToBounds = true
       return qrImageView
    } ()
    private let Label1: UILabel = {
        let label = UILabel()
        label.text = "CUP OF JOY"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 30)
        label.textColor = .white
        label.textAlignment = .left
        label.backgroundColor = .clear
        return label
    } ()
    
    private let Label2: UILabel = {
        let label2 = UILabel()
        label2.text = "AD SOYAD"
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.font = UIFont.systemFont(ofSize: 18)
        label2.textColor = .white
        label2.textAlignment = .left
        label2.backgroundColor = .clear
        return label2
    } ()
    private let Label3: UILabel = {
        let label3 = UILabel()
        label3.text = "HEDİYELERİNİZ: 2"
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.font = UIFont.systemFont(ofSize: 18)
        label3.textColor = .white
        label3.textAlignment = .right
        label3.backgroundColor = .clear
        return label3
    } ()
    private let Label4: UILabel = {
        let label4 = UILabel()
        label4.text = "DAMGA"
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.font = UIFont.systemFont(ofSize: 16)
        label4.textColor = .white
        label4.textAlignment = .center
        label4.backgroundColor = .clear
        return label4
    } ()
    private let Label5: UILabel = {
        let label5 = UILabel()
        label5.text = "BAKİYE: 150TL"
        label5.translatesAutoresizingMaskIntoConstraints = false
        label5.font = UIFont.systemFont(ofSize: 18)
        label5.textColor = .white
        label5.textAlignment = .right
        label5.backgroundColor = .clear
        return label5
    } ()
    private let Label6: UILabel = {
        let label6 = UILabel()
        label6.text = "Tuna Toramanoğlu"
        label6.translatesAutoresizingMaskIntoConstraints = false
        label6.font = UIFont.systemFont(ofSize: 18)
        label6.textColor = .white
        label6.textAlignment = .left
        label6.backgroundColor = .clear
        return label6
    } ()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupUI()
    }
    private func setupUI() {
        view.addSubview(qrView)
        qrView.addSubview(imgView)
        qrView.addSubview(Label1)
        qrView.addSubview(Label2)
        qrView.addSubview(Label3)
        qrView.addSubview(Label4)
        qrView.addSubview(Label5)
        qrView.addSubview(Label6)
        view.addSubview(qrImageView)
        
        
        NSLayoutConstraint.activate ([
            qrView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            qrView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            qrView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            qrView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -380),
                        
            imgView.topAnchor.constraint(equalTo: Label1.bottomAnchor, constant: 5),
            imgView.leadingAnchor.constraint(equalTo: qrView.leadingAnchor, constant: 10),
            imgView.trailingAnchor.constraint(equalTo: qrView.trailingAnchor, constant: -10),
            imgView.bottomAnchor.constraint(equalTo: qrView.bottomAnchor, constant: -110),

            Label1.topAnchor.constraint(equalTo: qrView.topAnchor, constant: 5),
            Label1.leadingAnchor.constraint(equalTo: qrView.leadingAnchor, constant: 10),
            Label1.trailingAnchor.constraint(equalTo: qrView.trailingAnchor, constant: -10),
            Label1.heightAnchor.constraint(equalToConstant: 40),
            
            Label2.topAnchor.constraint(equalTo: imgView.bottomAnchor, constant: 10),
            Label2.leadingAnchor.constraint(equalTo: qrView.leadingAnchor, constant: 10),
            Label2.trailingAnchor.constraint(equalTo: qrView.trailingAnchor, constant: -10),
            Label2.heightAnchor.constraint(equalToConstant: 40),
            
            Label3.topAnchor.constraint(equalTo: imgView.bottomAnchor, constant: 10),
            Label3.leadingAnchor.constraint(equalTo: qrView.leadingAnchor, constant: 50),
            Label3.trailingAnchor.constraint(equalTo: qrView.trailingAnchor, constant: -50),
            Label3.heightAnchor.constraint(equalToConstant: 20),
            
            Label4.topAnchor.constraint(equalTo: qrView.topAnchor),
            Label4.leadingAnchor.constraint(equalTo: qrView.leadingAnchor, constant: 10),
            Label4.trailingAnchor.constraint(equalTo: qrView.trailingAnchor, constant: -10),
            Label4.heightAnchor.constraint(equalToConstant: 40),
            
            Label5.topAnchor.constraint(equalTo: Label3.bottomAnchor,constant: 10),
            Label5.leadingAnchor.constraint(equalTo: qrView.leadingAnchor, constant: 50),
            Label5.trailingAnchor.constraint(equalTo: qrView.trailingAnchor, constant: -50),
            Label5.heightAnchor.constraint(equalToConstant: 20),
            
            Label6.topAnchor.constraint(equalTo: Label2.bottomAnchor, constant: 10),
            Label6.leadingAnchor.constraint(equalTo: qrView.leadingAnchor, constant: 10),
            Label6.trailingAnchor.constraint(equalTo: qrView.trailingAnchor, constant: -10),
            Label6.heightAnchor.constraint(equalToConstant: 20),
            
            qrImageView.topAnchor.constraint(equalTo: qrView.bottomAnchor, constant: 59),
            qrImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 92),
            qrImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -92),
            qrImageView.heightAnchor.constraint(equalToConstant: 209),
            
        ])
        
        let qrCodeData = ""
            if let qrCodeImage = generateQRCode(from: qrCodeData) {
                self.qrImageView.image = qrCodeImage
        }
    }
    func generateQRCode(from string: String) -> UIImage? {
        let data = string.data(using: String.Encoding.ascii)
            if let filter = CIFilter(name: "CIQRCodeGenerator") {
                filter.setValue(data, forKey: "InputMessage")
                let transform = CGAffineTransform(scaleX: 3, y: 3)
                
                if let output = filter.outputImage?.transformed(by: transform) {
                    return UIImage(ciImage: output)
                }
        }
        return nil
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
