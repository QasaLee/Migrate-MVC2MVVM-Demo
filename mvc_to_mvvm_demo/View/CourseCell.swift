//
//  CourseCell.swift
//  mvc_to_mvvm_demo
//
//  Created by M78 on 8/27/18.
//  Copyright © 2018 Brian Voong. All rights reserved.
//

import UIKit

class CourseCell: UITableViewCell {

    
    var courseViewModel: CourseViewModel! // TODO: didSet
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setHighlighted(_ highlighted: Bool, animated: Bool) {
        super.setHighlighted(highlighted, animated: animated)
        contentView.backgroundColor = isHighlighted ? .highlightColor : .white
        textLabel?.textColor = isHighlighted ? .white : .mainTextBlue
        detailTextLabel?.textColor = isHighlighted ? .white : .black
    }

}
