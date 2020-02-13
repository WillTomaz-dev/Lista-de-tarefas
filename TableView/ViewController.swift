//
//  ViewController.swift
//  Lista de tarefas
//
//  Created by William Tomaz on 23/10/19.
//  Copyright © 2019 William Tomaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let taskKey = "newTask"
    @IBOutlet weak var newTask: UITextField!
    @IBAction func addNewTask(_ sender: Any) {
        if let task = newTask.text{
            UserDefaults.standard.set(task, forKey: taskKey)
        }
    }
    
    func recuperarTask() -> String{
        if let taskRecuperado = UserDefaults.standard.object(forKey: taskKey){
        return taskRecuperado as! String
        }
        return ""
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

