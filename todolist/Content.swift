//
//  Content.swift
//  todolist
//
//  Created by Tchang on 27/06/16.
//  Copyright © 2016 Tchang. All rights reserved.
//

import UIKit

class Content: NSObject {

    var title: String
    var list = [String]()
    
    init(title: String) {
        self.title = title
    }
}
