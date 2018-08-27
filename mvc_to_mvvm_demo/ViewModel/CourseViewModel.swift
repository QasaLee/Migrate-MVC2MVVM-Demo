//
//  CourseViewModel.swift
//  mvc_to_mvvm_demo
//
//  Created by M78 on 8/27/18.
//  Copyright © 2018 Brian Voong. All rights reserved.
//

import Foundation
import UIKit

class CourseViewModel { // Attention: It used to be a 'Struct'
    let name: String
    let detailTxtString: String
    let accessoryType: UITableViewCell.AccessoryType
    
    
    // Dependency Injection(DI)
    init(course: Course) {
        self.name = course.name
        
        if (course.number_of_lessons > 32) {
            detailTxtString = "There are more than 32 courses! \(course.number_of_lessons) lessons to be exact."
            accessoryType = .detailButton // More options here!
        } else {
            detailTxtString = "Lessons: \(course.number_of_lessons) available!"
            accessoryType = .detailDisclosureButton // try more options here!
        }
    }
}
