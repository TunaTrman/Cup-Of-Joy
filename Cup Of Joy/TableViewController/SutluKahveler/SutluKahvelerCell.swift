//
//  SutluKahvelerCell.swift
//  Cup Of Joy
//
//  Created by Tuna Toramanoğlu on 8.05.2023.
//

import UIKit

class SutluKahvelerCell: UITableViewCell {
    
    var sutluKahveImageView = UIImageView()
    var sutluKahveTitleLabel = UILabel()
    var sutluKahveSummary = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(sutluKahveImageView)
        addSubview(sutluKahveTitleLabel)
        addSubview(sutluKahveSummary)
        
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
        sutluKahveImageView.image = kahve.image
        sutluKahveTitleLabel.text = kahve.title
        sutluKahveSummary.text = kahve.summary
        
    }
    func configureImageView() {
        sutluKahveImageView.layer.cornerRadius = 12
        sutluKahveImageView.clipsToBounds = true
    }
    func configureTitleLabel() {
        sutluKahveTitleLabel.numberOfLines = 0
        sutluKahveTitleLabel.adjustsFontSizeToFitWidth = true
    }
    func configureSummary() {
        sutluKahveSummary.translatesAutoresizingMaskIntoConstraints = false
        sutluKahveSummary.textColor = .gray
        sutluKahveSummary.numberOfLines = 0
        sutluKahveSummary.font = UIFont.systemFont(ofSize: 14)
    }

    func setImageConstraints() {
        sutluKahveImageView.translatesAutoresizingMaskIntoConstraints = false
        sutluKahveImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        sutluKahveImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        sutluKahveImageView.widthAnchor.constraint(equalToConstant: 110).isActive = true
        sutluKahveImageView.heightAnchor.constraint(equalToConstant: 110).isActive = true
    }

    func setTitleLabelConstraints() {
        sutluKahveTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        sutluKahveTitleLabel.leadingAnchor.constraint(equalTo: sutluKahveImageView.trailingAnchor, constant: 10).isActive = true
        sutluKahveTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        sutluKahveTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -30).isActive = true
    }

    func setSummaryConstraints() {
        sutluKahveSummary.translatesAutoresizingMaskIntoConstraints = false
        sutluKahveSummary.leadingAnchor.constraint(equalTo: sutluKahveImageView.trailingAnchor, constant: 15).isActive = true
        sutluKahveSummary.trailingAnchor.constraint(equalTo: sutluKahveTitleLabel.trailingAnchor).isActive = true
        sutluKahveSummary.topAnchor.constraint(equalTo: sutluKahveTitleLabel.bottomAnchor, constant: -10).isActive = true
        sutluKahveSummary.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true

    }


}
