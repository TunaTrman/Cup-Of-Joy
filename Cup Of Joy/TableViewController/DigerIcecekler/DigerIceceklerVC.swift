//
//  DigerIceceklerVC.swift
//  Cup Of Joy
//
//  Created by Tuna Toramanoğlu on 8.05.2023.
//

import UIKit

class DigerIceceklerVC: UIViewController {

    var jsonString: String?
    var tableView = UITableView()
    var kahveler : [Kahve] = []

    struct Cells4 {
        static let digerIceceklerCell = "DigerIceceklerCell"
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        

        configureTableView()
        view.backgroundColor = .orange

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "tableVC")
        tableView.register(DigerIceceklerCell.self, forCellReuseIdentifier: "digerIceceklerTVC")
        tableView.reloadData()
        tableView.delegate = self
        tableView.dataSource = self

        if let path = Bundle.main.path(forResource: "DigerIcecekler", ofType: "json") {
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
        tableView.register(DigerIceceklerCell.self, forCellReuseIdentifier: Cells4.digerIceceklerCell)
        tableView.pin(to: view)
    }

    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension DigerIceceklerVC: UITableViewDelegate, UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kahveler.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells4.digerIceceklerCell) as! DigerIceceklerCell
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
    func pinTo4Superview() {
        translatesAutoresizingMaskIntoConstraints = false
        guard let superview = superview else { return }
        topAnchor.constraint(equalTo: superview.topAnchor).isActive = true
        leadingAnchor.constraint(equalTo: superview.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: superview.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: superview.bottomAnchor).isActive = true
    }
}
