//
//  ViewController.swift
//  SmallProject1
//
//  Created by Immanuel Matthews-Feemster on 10/6/23.
//

import UIKit

class ViewController: UIViewController {
    
    let tableView = UITableView()
    let countries = [
        "Estonia",
        "France",
        "Germany",
        "Ireland",
        "Italy",
        "Monaco",
        "Nigeria",
        "Poland",
        "Russia",
        "Spain",
        "UK",
        "US"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        setupUI()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    private func setupUI() {
        view.addSubview(tableView)
        self.tableView.register(FlagCell.self, forCellReuseIdentifier: FlagCell.identifier)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
}

extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FlagCell.identifier, for: indexPath) as! FlagCell
        let country = countries[indexPath.row]
        let image = UIImage(named: country)
        cell.flagImageView.image = image
        cell.countryNameLabel.text = country
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = FlagViewController()
        self.present(vc, animated: true)
    }
}

