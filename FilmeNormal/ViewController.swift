//
//  ViewController.swift
//  FilmeNormal
//
//  Created by user213596 on 4/5/22.
//

import UIKit

// classe // nome do arquivo // herança
class ViewController: UIViewController {

    @IBOutlet weak var usuarioTextField: UITextField!
    
    @IBOutlet weak var senhaTextField: UITextField!
    
    //sobreescrever da herança pai //função //nome da função
    override func viewDidLoad() {
        //quando vc esta na classe filha e quer puxar herança do pai  //nome da função
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //digitar (prep)
    //sobreescrevendo // função //herança
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //imprimir
        print(segue.identifier!)
        
        if (segue.identifier == "loginParaSegundaTelaSegue"){
        
       //variavel // nome da variavel // segue é destino e esta convertendo para dados (segundaTelaViewController)
        let segundaTela = segue.destination as! SegundaTelaViewController
        
               
        //nome da segue //nome da variavel  //nome do textField .text
        segundaTela.usuarioValue = usuarioTextField.text!
        //nome da segue //nome da variavel  //nome do textField .text
        segundaTela.senhaValue = senhaTextField.text!
        }
        
    }

}

