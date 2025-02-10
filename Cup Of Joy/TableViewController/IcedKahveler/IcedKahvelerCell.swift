//
//  IcedKahvelerCell.swift
//  Cup Of Joy
//
//  Created by Tuna Toramanoğlu on 8.05.2023.
//

import UIKit

class IcedKahvelerCell: UITableViewCell {
    
    var icedKahveImageView = UIImageView()
    var icedKahveTitleLabel = UILabel()
    var icedKahveSummary = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(icedKahveImageView)
        addSubview(icedKahveTitleLabel)
        addSubview(icedKahveSummary)
        
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
        icedKahveImageView.image = kahve.image
        icedKahveTitleLabel.text = kahve.title
        icedKahveSummary.text = kahve.summary
        
    }
    func configureImageView() {
        icedKahveImageView.layer.cornerRadius = 12
        icedKahveImageView.clipsToBounds = true
    }
    func configureTitleLabel() {
        icedKahveTitleLabel.numberOfLines = 0
        icedKahveTitleLabel.adjustsFontSizeToFitWidth = true
    }
    func configureSummary() {
        icedKahveSummary.translatesAutoresizingMaskIntoConstraints = false
        icedKahveSummary.textColor = .gray
        icedKahveSummary.numberOfLines = 0
        icedKahveSummary.font = UIFont.systemFont(ofSize: 14)
    }

    func setImageConstraints() {
        icedKahveImageView.translatesAutoresizingMaskIntoConstraints = false
        icedKahveImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        icedKahveImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        icedKahveImageView.widthAnchor.constraint(equalToConstant: 110).isActive = true
        icedKahveImageView.heightAnchor.constraint(equalToConstant: 110).isActive = true
    }

    func setTitleLabelConstraints() {
        icedKahveTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        icedKahveTitleLabel.leadingAnchor.constraint(equalTo: icedKahveImageView.trailingAnchor, constant: 10).isActive = true
        icedKahveTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        icedKahveTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -30).isActive = true
    }

    func setSummaryConstraints() {
        icedKahveSummary.translatesAutoresizingMaskIntoConstraints = false
        icedKahveSummary.leadingAnchor.constraint(equalTo: icedKahveImageView.trailingAnchor, constant: 15).isActive = true
        icedKahveSummary.trailingAnchor.constraint(equalTo: icedKahveTitleLabel.trailingAnchor).isActive = true
        icedKahveSummary.topAnchor.constraint(equalTo: icedKahveTitleLabel.bottomAnchor, constant: -3).isActive = true
        icedKahveSummary.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
    }
}
    
