//
//  SadeKahvelerCell.swift
//  Cup Of Joy
//
//  Created by Tuna Toramanoğlu on 8.05.2023.
//

import UIKit

class SadeKahvelerCell: UITableViewCell {

    var sadeKahveImageView = UIImageView()
    var sadeKahveTitleLabel = UILabel()
    var sadeKahveSummary = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(sadeKahveImageView)
        addSubview(sadeKahveTitleLabel)
        addSubview(sadeKahveSummary)
        
        configureImageView()
        configureSummary()
        configureTitleLabel()
        
        setImageConstraints()
        setTitleLabelConstraints()
        setSummaryConstraints()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func set(kahve: Kahve) {
        sadeKahveImageView.image = kahve.image
        sadeKahveTitleLabel.text = kahve.title
        sadeKahveSummary.text = kahve.summary
        
    }
    func configureImageView() {
        sadeKahveImageView.layer.cornerRadius = 12
        sadeKahveImageView.clipsToBounds = true
    }
    func configureTitleLabel() {
        sadeKahveTitleLabel.numberOfLines = 0
        sadeKahveTitleLabel.adjustsFontSizeToFitWidth = true
    }
    func configureSummary() {
        sadeKahveSummary.translatesAutoresizingMaskIntoConstraints = false
        sadeKahveSummary.textColor = .gray
        sadeKahveSummary.numberOfLines = 0
        sadeKahveSummary.font = UIFont.systemFont(ofSize: 14)
    }

    func setImageConstraints() {
        sadeKahveImageView.translatesAutoresizingMaskIntoConstraints = false
        sadeKahveImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        sadeKahveImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        sadeKahveImageView.widthAnchor.constraint(equalToConstant: 110).isActive = true
        sadeKahveImageView.heightAnchor.constraint(equalToConstant: 110).isActive = true
    }

    func setTitleLabelConstraints() {
        sadeKahveTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        sadeKahveTitleLabel.leadingAnchor.constraint(equalTo: sadeKahveImageView.trailingAnchor, constant: 10).isActive = true
        sadeKahveTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        sadeKahveTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -30).isActive = true
    }

    func setSummaryConstraints() {
        sadeKahveSummary.translatesAutoresizingMaskIntoConstraints = false
        sadeKahveSummary.leadingAnchor.constraint(equalTo: sadeKahveImageView.trailingAnchor, constant: 15).isActive = true
        sadeKahveSummary.trailingAnchor.constraint(equalTo: sadeKahveTitleLabel.trailingAnchor).isActive = true
        sadeKahveSummary.topAnchor.constraint(equalTo: sadeKahveTitleLabel.bottomAnchor, constant: -3).isActive = true
        sadeKahveSummary.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
    }
}
