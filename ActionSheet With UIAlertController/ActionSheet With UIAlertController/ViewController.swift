//
//  ViewController.swift
//  ActionSheet With UIAlertController
//
//  Created by sainath bamen on 12/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showActionSheet(_ sender: Any) {
        let alertController = UIAlertController(title: "Selection Process", message: "Choose Your Option", preferredStyle: .actionSheet)
        
        let deleteButton  = UIAlertAction(title: "Delete", style: .default) { (action) in
            self.myText.text = "You clicked on Delete Button"
        }
        let saveButton = UIAlertAction(title: "Save", style: .default) { (action) in
            self.myText.text = "You clicked on Save Button"
        }
        let cancelButton = UIAlertAction(title: "Cancel", style: .default) { (action) in
            self.myText.text = "You clicked on Cancel"
        }
        // declear kelela variable function madhla.
        alertController.addAction(deleteButton)
        alertController.addAction(saveButton)
        alertController.addAction(cancelButton)
        present(alertController, animated: true, completion: nil)

    }
    
}

