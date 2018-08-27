//
//  CourseCell.swift
//  mvc_to_mvvm_demo
//
//  Created by M78 on 8/27/18.
//  Copyright © 2018 Brian Voong. All rights reserved.
//

import UIKit

class CourseCell: UITableViewCell {

    
    var courseViewModel: CourseViewModel! {
        didSet {
            textLabel?.text = courseViewModel.name
            detailTextLabel?.text = courseViewModel.detailTxtString
            accessoryType = courseViewModel.accessoryType
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
        super.setHighlighted(highlighted, animated: animated)
        contentView.backgroundColor = isHighlighted ? .highlightColor : .white
        textLabel?.textColor = isHighlighted ? .white : .mainTextBlue
        detailTextLabel?.textColor = isHighlighted ? .white : .black
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .subtitle, reuseIdentifier: reuseIdentifier) // Never use parameter 'style'.
        
        // Cell Configuration
        textLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        textLabel?.numberOfLines = 0 // Make it self-resizing
        detailTextLabel?.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        detailTextLabel?.font = UIFont.systemFont(ofSize: 18, weight: UIFont.Weight.ultraLight)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}
