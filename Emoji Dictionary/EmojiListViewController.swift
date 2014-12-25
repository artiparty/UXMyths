//
//  EmojiListViewController.swift
//  Emoji Dictionary
//
//  Created by Arti on 11/16/14.
//  Copyright (c) 2014 Arti. All rights reserved.
//

import Foundation
import UIKit

class EmojiListViewController : UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var myths = ["Myth #1: People read on the web","Myth #2: All pages should be accessible in 3 clicks","😱","👍","🎈","📦","🍎","🍬"]
    
    var emoji = "👜"
    
    override func viewDidLoad() {
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.myths.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell ()
        cell.textLabel!.text = self.myths[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.emoji = self.myths[indexPath.row]
        self.performSegueWithIdentifier("tableViewToEmojiSegue", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var detailViewController = segue.destinationViewController as EmojiDetailViewController
        detailViewController.emoji = self.emoji
        
        if self.emoji == "Myth #1: People read on the web" {
            detailViewController.emojiDefinition = "A smiling face" 
        }

    }
    
}