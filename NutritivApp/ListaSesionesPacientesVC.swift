//
//  ListaSesionesPacientesVC.swift
//  NutritivApp
//
//  Created by user189858 on 11/16/21.
//

import UIKit

class ListaSesionesPacientesVC: UIViewController {

    @IBOutlet weak var tablaSesionesPacientes: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var arrSesionesPacientes = ["Arturo", "Rubén", "Alex", "Fernando", "Víctor"]
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueInfoSesion" {
            let indexPath = tablaSesionesPacientes.indexPathForSelectedRow
            let indice = indexPath?.row
            if indice != nil{
                let nombre = arrSesionesPacientes[indice!]
                let vc = segue.destination as! InfoSesionPacienteVC
                vc.nombrePaciente = nombre
            }
        }
    }
}

extension ListaSesionesPacientesVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrSesionesPacientes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaSesionPaciente", for: indexPath)
        
        celda.textLabel?.text = arrSesionesPacientes[indexPath.row]
        
        return celda
    }
}
