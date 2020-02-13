//
//  CadastroTarefaViewController.swift
//  Lista de tarefas
//
//  Created by William Tomaz on 04/11/19.
//  Copyright © 2019 William Tomaz. All rights reserved.
//

import UIKit

class CadastroTarefaViewController: UIViewController {
    
    
    
    @IBOutlet weak var tarefaCampo: UITextView!
    @IBAction func adicionarButton(_ sender: Any) {
        
        if let textoDigitado = tarefaCampo.text{
            let tarefa = TarefaUserDefaults()
            tarefa.salvar(tarefa: textoDigitado)
            tarefaCampo.text = ""
            let dados = tarefa.listar()
            print (dados)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) { self.view.endEditing(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
