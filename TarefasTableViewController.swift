//
//  TarefasTableViewController.swift
//  Lista de tarefas
//
//  Created by William Tomaz on 04/11/19.
//  Copyright © 2019 William Tomaz. All rights reserved.
//

import UIKit

class TarefasTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    var tarefas: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) { self.view.endEditing(true)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCell.EditingStyle.delete{
            let tarefa = TarefaUserDefaults()
            tarefa.excluir(indice: indexPath.row)
            atualizarListaTarefas()
        }
    }
    func atualizarListaTarefas(){
        let tarefa = TarefaUserDefaults()
        tarefas = tarefa.listar()
        tableView.reloadData()
    }
        
    

    override func viewDidAppear(_ animated: Bool) {
        atualizarListaTarefas()
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tarefas.count
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celula = tableView.dequeueReusableCell(withIdentifier: "addTask", for: indexPath)
        
        celula.textLabel?.text = tarefas [indexPath.row]
        
        return celula
    }
    
}
