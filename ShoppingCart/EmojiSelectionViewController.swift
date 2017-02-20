//
//  EmojiSelectionViewController.swift
//  ShoppingCart
//
//  Created by Jim Campagno on 8/10/16.
//  Copyright © 2016 Gamesmith, LLC. All rights reserved.
//

import UIKit

class EmojiSelectionViewController: UIViewController {
    
    @IBOutlet weak var leftTextField: UITextField!
    @IBOutlet weak var rightTextField: UITextField!
    
    var emojiDelegate: EmojiCreation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.22, green:0.33, blue:0.58, alpha:1.00)
    }
    
    @IBAction func saveButton(_ sender: Any) {
        let leftText = leftTextField.text
        let rightText = rightTextField.text
        let combined: (String, String) = (leftText!, rightText!)
        
        emojiDelegate?.create(emojiGroup: combined)
        
        dismiss(animated: true, completion: nil)
    }

    
    
}
