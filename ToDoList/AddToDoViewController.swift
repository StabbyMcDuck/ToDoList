//
//  AddToDoViewController.swift
//  ToDoList
//
//  Created by Regina Imhoff on 8/17/17.
//  Copyright © 2017 Regina Imhoff. All rights reserved.
//

import UIKit

class AddToDoViewController: UIViewController {
    var previousVC = ToDoTableViewController()
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var importantSwitch: UISwitch!
   
    @IBAction func addTapped(_ sender: Any) {
        let toDo = ToDo()
        
        toDo.name = titleTextField.text!
        toDo.important = importantSwitch.isOn
        
        previousVC.toDos.append(toDo)
        
        previousVC.tableView.reloadData()
        
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
