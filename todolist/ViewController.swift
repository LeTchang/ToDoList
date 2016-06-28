//
//  ViewController.swift
//  todolist
//
//  Created by Tchang on 21/06/16.
//  Copyright © 2016 Tchang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // MARK: - IBOutlets
    @IBOutlet weak var listTableView: UITableView!
    
    // MARK: - Attributes
    var tasks = mainList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - TableView functions
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.list.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CustomCell") as! CustomCell
        cell.nameTxt.text = tasks.list[indexPath.row].title
        cell.nameTxt.enabled = false
        cell.countText.enabled = false
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    // MARK: - IBAction functions
    @IBAction func onAddItem(sender: AnyObject) {
        let alert = UIAlertController(title: "Create new list",
                                      message: "Enter the name of your list",
                                      preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Default, handler: nil))
        alert.addTextFieldWithConfigurationHandler( { (newText) in
            newText.placeholder = "name"
        })
        alert.addAction(UIAlertAction(title: "Add", style: UIAlertActionStyle.Default, handler: { (action) in
            let new = Content(title: alert.textFields![0].text!)
            self.tasks.list.append(new)
            print(alert.textFields![0].text!)
            self.listTableView.reloadData()
        }))
        alert.view.setNeedsLayout()
        self.presentViewController(alert, animated: true, completion: nil)
    }
}

