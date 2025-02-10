//
//  IcedKahvelerVC.swift
//  Cup Of Joy
//
//  Created by Tuna Toramanoğlu on 8.05.2023.
//

import UIKit

class IcedKahvelerVC: UIViewController {

    var jsonString: String?
    var tableView = UITableView()
    var kahveler : [Kahve] = []

    struct Cells3 {
        static let icedKahvelerCell = "IcedKahvelerCell"
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        

        configureTableView()
        view.backgroundColor = .orange

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "tableVC")
        tableView.register(IcedKahvelerCell.self, forCellReuseIdentifier: "icedKahvelerTVC")
        tableView.reloadData()
        tableView.delegate = self
        tableView.dataSource = self

        if let path = Bundle.main.path(forResource: "IcedKahveler", ofType: "json") {
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
        tableView.register(IcedKahvelerCell.self, forCellReuseIdentifier: Cells3.icedKahvelerCell)
        tableView.pin(to: view)
    }

    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension IcedKahvelerVC: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kahveler.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells3.icedKahvelerCell) as! IcedKahvelerCell
        let kahve = kahveler[indexPath.row]
        cell.set(kahve: kahve)
        print(kahve)
        return cell

    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }

}

extension UIView {
    func pinTo3Superview() {
        translatesAutoresizingMaskIntoConstraints = false
        guard let superview = superview else { return }
        topAnchor.constraint(equalTo: superview.topAnchor).isActive = true
        leadingAnchor.constraint(equalTo: superview.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: superview.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superview.bottomAnchor).isActive = true
    }
}

