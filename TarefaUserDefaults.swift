//
//  TarefaUserDefaults.swift
//  Lista de tarefas
//
//  Created by William Tomaz on 04/11/19.
//  Copyright © 2019 William Tomaz. All rights reserved.
//

import UIKit

class TarefaUserDefaults {
    
    let chave = "listaTarefas"
    var tarefas: [String] = []
    
    func excluir(indice: Int){
        //Recuperar tarefas já salvas
        tarefas = listar()
        //excluir
        tarefas.remove(at: indice)
        UserDefaults.standard.set( tarefas, forKey: chave)
    }
    
    func salvar(tarefa: String){
        //Recuperar tarefas já salvas
        tarefas = listar()
        //Salvar tarefas
        tarefas.append(tarefa)
        UserDefaults.standard.set( tarefas, forKey: chave)
        //excluir
        
    }
    
    func listar()-> Array<String> {
        
        let dados = UserDefaults.standard.object(forKey: chave)
        
        if dados != nil{
            return dados as! Array<String>
        }else{
            return []
            }
        }
    }

