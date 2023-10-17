//
//  FlagCell.swift
//  SmallProject1
//
//  Created by Immanuel Matthews-Feemster on 10/10/23.
//

import UIKit

class FlagCell: UITableViewCell {
    var flagImageView = UIImageView()
    var countryNameLabel = UILabel()
    static let identifier = "flagCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(flagImageView)
        addSubview(countryNameLabel)
        configureNameLabel()
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureNameLabel() {
        countryNameLabel.adjustsFontSizeToFitWidth = true
    }
    
    func configureImageView() {
        flagImageView.image = UIImage(named: "US")
    }
    
    // MARK: - UI Setup
    private func setupUI() {
    
        NSLayoutConstraint.activate([
            flagImageView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            flagImageView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
            flagImageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            flagImageView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            
            flagImageView.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor),
            flagImageView.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
        ])
    }
}
