//
//  SutluKahvelerVC.swift
//  Cup Of Joy
//
//  Created by Tuna Toramanoğlu on 8.05.2023.
//

import UIKit

class SutluKahvelerVC: UIViewController {

    var jsonString: String?
    var tableView = UITableView()
    var kahveler : [Kahve] = []

    struct Cells {
        static let sutluKahvelerCell = "SütlüKahvelerCell"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
        view.backgroundColor = .orange

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "tableVC")
        tableView.register(SutluKahvelerCell.self, forCellReuseIdentifier: "sütlüKahvelerTVC")
        tableView.reloadData()
        tableView.delegate = self
        tableView.dataSource = self

        if let path = Bundle.main.path(forResource: "SutluKahveler", ofType: "json") {
            do {
                let jsonData = try Data(contentsOf: URL(fileURLWithPath: path))
                let decoder = JSONDecoder()
                self.kahveler = try decoder.decode([Kahve].self, from: jsonData)
                tableView.reloadData() // Table view güncelleniyor
            } catch {
                print("Error: \(error.localizedDescription)")
            }
        }
    }
    func configureTableView() {
        view.addSubview(tableView)
        setTableViewDelegates()
        tableView.rowHeight = 100
        tableView.register(SutluKahvelerCell.self, forCellReuseIdentifier: Cells.sutluKahvelerCell)
        tableView.pin(to: view)
    }

    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension SutluKahvelerVC: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kahveler.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.sutluKahvelerCell) as! SutluKahvelerCell
        let kahve = kahveler[indexPath.row]
        cell.set(kahve: kahve)
        print(kahve)
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }

}

extension UIView {
    func pin(to superView: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: superView.topAnchor).isActive = true
        leadingAnchor.constraint(equalTo: superView.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: superView.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superView.bottomAnchor).isActive = true
    }
}

