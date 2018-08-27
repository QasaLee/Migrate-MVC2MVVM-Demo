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
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }

    
    // MARK: - Helper Methods
    fileprivate func setupNavbar() {
        navigationItem.title = "Courses"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.backgroundColor = .yellow
        navigationController?.navigationBar.isTranslucent = false
//        navigationController?.navigationBar.tintColor = UIColor.rgb(red: 50, green: 199, blue: 242)
        navigationController?.navigationBar.tintColor = UIColor.red // It seems not working!
        navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: .white]
    }

    fileprivate func setupTableView() {
        
    }
    
    fileprivate func fetchData() {
        
    }
    
}
