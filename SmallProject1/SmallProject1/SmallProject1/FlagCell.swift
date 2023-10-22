//
//  FlagCell.swift
//  SmallProject1
//
//  Created by Immanuel Matthews-Feemster on 10/10/23.
//

import UIKit

class FlagCell: UITableViewCell {
    
    var flagImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.image = UIImage(systemName: "questionmark")
        iv.tintColor = .label
        return iv
    }()
    
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
        countryNameLabel.translatesAutoresizingMaskIntoConstraints = false
        countryNameLabel.adjustsFontSizeToFitWidth = true
    }
    
    func configureImageView() {
        flagImageView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    // MARK: - UI Setup
    private func setupUI() {
        configureNameLabel()
        configureImageView()
    
        NSLayoutConstraint.activate([
            flagImageView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            flagImageView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
            flagImageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            flagImageView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            
            flagImageView.heightAnchor.constraint(equalToConstant: 90),
            flagImageView.widthAnchor.constraint(equalToConstant: 90),
            
            flagImageView.centerYAnchor.constraint(equalTo: self.contentView.centerYAnchor),
            flagImageView.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
            
            countryNameLabel.leadingAnchor.constraint(equalTo: flagImageView.trailingAnchor, constant: 12),
            countryNameLabel.centerYAnchor.constraint(equalTo: flagImageView.centerYAnchor),
        ])
    }
}
