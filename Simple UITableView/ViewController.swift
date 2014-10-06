//
//  ViewController.swift
//  Simple UITableView
//
//  Created by AntiHaus on 9/23/14.
//
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet var tableView: UITableView?
    
    let cellIdentifier = "cellIdentifier"
    
    // Array of strings for the tableView
    
    var tableData = ["zero","one","two","three","four","five","six","seven"]
    
    
        
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Register the UITableViewCell class with the tableView
        
        self.tableView?.registerClass(UITableViewCell.self, forCellReuseIdentifier: self.cellIdentifier)
        
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        // Return number of rows in table
        
        return tableData.count
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // Create Resusable Cell, get row string from tableData
        
        var cell = tableView.dequeueReusableCellWithIdentifier(self.cellIdentifier) as UITableViewCell
        
        cell.textLabel?.text = self.tableData[indexPath.row]
        
        return cell
    }
    
    
    
    // User Selected a row
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        
        // Do what you want here
        
        let selectValue = self.tableData[indexPath.row]
        
        println("You selected row \(indexPath.row) and the string is \(selectValue)")
    }
    
    
    
}

