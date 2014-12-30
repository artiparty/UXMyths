//
//  File.swift
//  Emoji Dictionary
//
//  Created by Arti on 11/17/14.
//  Copyright (c) 2014 Arti. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class MythDetailViewController : UIViewController {
    
    @IBOutlet weak var mythLabel: UILabel!
    
    @IBOutlet weak var mythDefinitionLabel: UILabel!
    
    var myth = "🎽"
    var mythDefinition = "No definition"
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.mythLabel.text = self.myth
//        self.mythDefinitionLabel.text = self.mythDefinition
    }
    
}