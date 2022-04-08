//
//  TabelaViewController.swift
//  FilmeNormal
//
//  Created by user213596 on 4/5/22.
//

import UIKit

//classe //nome do arquivo  //chama UITable
class TabelaViewController : UITableViewController{
    
    let Filmes : [String] = ["Gladiador", "Onde os Fracos não têm vez", "12 Anos de Escravidão", "Green Book: O Guia", "Soul"]
    
    let descricaoFilmes = ["Nome: Gladiador, Gênero: Ação/Aventura, Diretor: Ridley Scott, Ano: 2001, Duração: 1h:30m ", "Nome: Onde os Fracos não têm vez, Gênero: Suspense/Drama, Diretor: Joel Coen, Ano: 2008, Duração: 2h:02m", "Nome: 12 Anos de Escravidão, Gênero: Drama, Diretor: Steve McQueen, Ano: 2014, Duração: 2h:13m", "Nome: Green Book: O Guia, Gênero: Drama/Biografia, Diretor: Peter Farrelly, Ano: 2019, Duração: 2h:10m", "Nome: Soul, Gênero: Animação, Diretor: Pete Docter, Ano: 2020, Duração: 1h:40m"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // posso colocar mais codigos aqui
    }
    
    //numero de Colunas
    
    //sobreescrever  //função
    override func numberOfSections(in tableView: UITableView) -> Int {
      return 1
    }
    
    //Quantas linhas
    //retorna quantidade de elementos
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Filmes.count
    }
    
    //uma linha para cada celula
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        
        let celula = tableView.dequeueReusableCell(withIdentifier: "celulaReuso", for: indexPath)
        
        //indexPath.row (pega toda celula)
        celula.textLabel?.text = Filmes[indexPath.row]
        
        return celula
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print(descricaoFilmes[indexPath.row])
        
        // Caixa de Alerta
        let alerta = UIAlertController(title: Filmes[indexPath.row], message: descricaoFilmes[indexPath.row], preferredStyle: .alert)
        
        //Botão entro do alerta
        let confirmar = UIAlertAction(title: "Iniciar Filme", style: .default, handler: nil)
        alerta.addAction(confirmar)
        
        //Botão de cancelar
        let cancelar = UIAlertAction(title: "Cancelar", style: .destructive, handler: nil)
        alerta.addAction(cancelar)
        
        present(alerta, animated: true, completion: nil)
        
        //seleciona
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
