//
//  ContentView.swift
//  todolist
//
//  Created by Tchang on 28/06/16.
//  Copyright © 2016 Tchang. All rights reserved.
//

import UIKit

class ContentView: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var index = 0
    
    override func viewDidLoad() {
        print("coucou")
    }
    
    func updateRealm () {
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ContentCell")!
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
}
