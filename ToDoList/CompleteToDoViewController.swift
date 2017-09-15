//
//  CompleteToDoViewController.swift
//  ToDoList
//
//  Created by Regina Imhoff on 9/13/17.
//  Copyright © 2017 Regina Imhoff. All rights reserved.
//

import UIKit


class CompleteToDoViewController: UIViewController {
    
    var previousVC = ToDoTableViewController()
    
    var selectedToDo : ToDoCoreData?

    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = selectedToDo?.name
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func completeTapped(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            if let unwrappedToDo = selectedToDo {
                context.delete(unwrappedToDo)
                navigationController?.popViewController(animated: true)
            }
        }
        
    }
    
}
