//
//  FlagViewController.swift
//  SmallProject1
//
//  Created by Immanuel Matthews-Feemster on 10/21/23.
//

import UIKit

class FlagViewController: UIViewController {

    let flagView: UIImageView = {
        let flagView = UIImageView()
        return flagView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    
    // MARK: - UI Setup
    private func setupUI() {
        self.view.addSubview(flagView)
        flagView.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            flagView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100),
            flagView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -100),
            flagView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            flagView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            
            flagView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            flagView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
        ])
    }
}
