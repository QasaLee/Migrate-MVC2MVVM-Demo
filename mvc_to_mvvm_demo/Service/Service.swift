//
//  Service.swift
//  mvc_to_mvvm_demo
//
//  Created by M78 on 8/27/18.
//  Copyright © 2018 Brian Voong. All rights reserved.
//

import Foundation

class Service: NSObject {
    
    static let shared = Service()
    
    func fetchCourses(completion: @escaping ([Course]?, Error?) -> ()) {
        let urlString = "https://api.letsbuildthatapp.com/jsondecodable/courses"
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, resp, error) in
            if let error = error {
                completion(nil, error)
                print("Failed to fetch courses: \(String(describing: error.localizedDescription))")
                return
            }
            
            // Response Check
            guard let data = data else { return }
            do {
                let courses = try JSONDecoder().decode([Course].self, from: data)
                DispatchQueue.main.async {
                    completion(courses, nil)
                }
            } catch let jsonError {
                print("Failed to decode: ", jsonError)
            }
        }.resume() // This is essential!
        
    }
}
