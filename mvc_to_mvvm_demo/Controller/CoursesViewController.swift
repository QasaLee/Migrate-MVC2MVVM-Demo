//
//  CoursesViewController.swift
//  mvc_to_mvvm_demo
//
//  Created by M78 on 8/27/18.
//  Copyright © 2018 Brian Voong. All rights reserved.
//

import UIKit

class CoursesViewController: UITableViewController {

    var courseViewModels = [CourseViewModel]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavbar()
        setupTableView()
        fetchData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courseViewModels.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath) as! CourseCell

        // Configure the cell...
        let courseViewModel = courseViewModels[indexPath.row]
        cell.courseViewModel = courseViewModel // didSet will work.
        return cell
    }

    
    // MARK: - Helper Methods
    
    fileprivate func setupTableView() {
        tableView.register(CourseCell.self, forCellReuseIdentifier: "cellId")
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 128, bottom: 0, right: 24)
        tableView.separatorColor = UIColor.mainTextBlue
        tableView.backgroundColor = UIColor.rgb(red: 12, green: 47, blue: 57)
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 160
        
        tableView.tableFooterView = UIView() // What does this do?
    }
    
    fileprivate func setupNavbar() {
        navigationItem.title = "Courses"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.backgroundColor = .yellow
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barTintColor = UIColor.rgb(red: 50, green: 199, blue: 242)
        navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }

    fileprivate func fetchData() {
        
    }
    
}
