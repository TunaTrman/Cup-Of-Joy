//
//  DigerIceceklerCell.swift
//  Cup Of Joy
//
//  Created by Tuna Toramanoğlu on 8.05.2023.
//

import UIKit

class DigerIceceklerCell: UITableViewCell {

    var digerIceceklerImageView = UIImageView()
    var digerIceceklerTitleLabel = UILabel()
    var digerIceceklerSummary = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(digerIceceklerImageView)
        addSubview(digerIceceklerTitleLabel)
        addSubview(digerIceceklerSummary)
        
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
        digerIceceklerImageView.image = kahve.image
        digerIceceklerTitleLabel.text = kahve.title
        digerIceceklerSummary.text = kahve.summary
        
    }
    func configureImageView() {
        digerIceceklerImageView.layer.cornerRadius = 12
        digerIceceklerImageView.clipsToBounds = true
    }
    func configureTitleLabel() {
        digerIceceklerTitleLabel.numberOfLines = 0
        digerIceceklerTitleLabel.adjustsFontSizeToFitWidth = true
    }
    func configureSummary() {
        digerIceceklerSummary.translatesAutoresizingMaskIntoConstraints = false
        digerIceceklerSummary.textColor = .gray
        digerIceceklerSummary.numberOfLines = 0
        digerIceceklerSummary.font = UIFont.systemFont(ofSize: 14)
    }

    func setImageConstraints() {
        digerIceceklerImageView.translatesAutoresizingMaskIntoConstraints = false
        digerIceceklerImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        digerIceceklerImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        digerIceceklerImageView.widthAnchor.constraint(equalToConstant: 110).isActive = true
        digerIceceklerImageView.heightAnchor.constraint(equalToConstant: 110).isActive = true
    }

    func setTitleLabelConstraints() {
        digerIceceklerTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        digerIceceklerTitleLabel.leadingAnchor.constraint(equalTo: digerIceceklerImageView.trailingAnchor, constant: 10).isActive = true
        digerIceceklerTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
        digerIceceklerTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -30).isActive = true
    }

    func setSummaryConstraints() {
        digerIceceklerSummary.translatesAutoresizingMaskIntoConstraints = false
        digerIceceklerSummary.leadingAnchor.constraint(equalTo: digerIceceklerImageView.trailingAnchor, constant: 15).isActive = true
        digerIceceklerSummary.trailingAnchor.constraint(equalTo: digerIceceklerTitleLabel.trailingAnchor).isActive = true
        digerIceceklerSummary.topAnchor.constraint(equalTo: digerIceceklerTitleLabel.bottomAnchor, constant: -3).isActive = true
        digerIceceklerSummary.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10).isActive = true
    }


}


