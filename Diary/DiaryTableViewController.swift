//
//  ViewController.swift
//  Diary
//
//  Created by ChanHyuc on 10/6/24.
//

import UIKit

class DiaryTableViewController: UIViewController {
    
    private let diaryTableViewCell = "DiaryTableViewCell"
    
    private let diaryTableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        diaryTableView.delegate = self
        diaryTableView.dataSource = self
        diaryTableView.register(DiaryTableViewCell.self, forCellReuseIdentifier: diaryTableViewCell)
        
    }

    private func configureUI() {
        view.backgroundColor = .systemBackground
        title = "일기장"
        view.addSubview(diaryTableView)
        
        NSLayoutConstraint.activate([
            diaryTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            diaryTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            diaryTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            diaryTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
}

extension DiaryTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: diaryTableViewCell, for: indexPath) as? DiaryTableViewCell else { return UITableViewCell() }
        return cell
    }
}
