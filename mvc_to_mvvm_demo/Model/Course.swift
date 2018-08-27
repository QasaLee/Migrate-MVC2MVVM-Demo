//
//  Course.swift
//  mvc_to_mvvm_demo
//
//  Created by M78 on 8/27/18.
//  Copyright © 2018 Brian Voong. All rights reserved.
//

import Foundation

class Course: Decodable { // Attention: It used to be 'Struct'
    let id: Int
    let name: String
    let number_of_lessons: Int
}
