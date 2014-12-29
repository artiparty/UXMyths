//
//  File.swift
//  Emoji Dictionary
//
//  Created by Arti on 11/17/14.
//  Copyright (c) 2014 Arti. All rights reserved.
//

import Foundation
import UIKit

class EmojiDetailViewController : UIViewController {
    
    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var emojiDefinitionLabel: UILabel!
    
    var emoji = "🎽"
    var emojiDefinition = "No definition"
    
    override func viewDidLoad() {
        self.emojiLabel.text = self.emoji
        self.emojiDefinitionLabel.text = self.emojiDefinition
    }
    
}