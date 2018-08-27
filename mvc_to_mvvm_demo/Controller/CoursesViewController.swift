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
        
    }

    fileprivate func setupTableView() {
        
    }
    
    fileprivate func fetchData() {
        
    }
    
}
