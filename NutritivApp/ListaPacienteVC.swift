//
//  ListaPacienteVC.swift
//  NutritivApp
//
//  Created by user189858 on 11/15/21.
//

import UIKit

class ListaPacienteVC: UIViewController {
    
    @IBOutlet weak var tablaPacientes: UITableView!
    
    var arrPacientes = [["Alex", "Serrano", "Durán", "aserrano@tec.mx", "5512341234"],
                        ["Arturo", "Marquez", "N", "amarquez@tec.mx", "5512344321"],
                        ["Fernando", "Melgar", "N", "fmelgar@tec.mx", "5511223344"],
                        ["Rubén", "Villalpando", "Bremont", "rvillalpando@tec.mx", "5544332211"],
                        ["Víctor Alfonso", "Sánchez", "Torres", "vsanchez@tec.mx", "5512123434"]]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "segueInfoPaciente") {
            let indexPath = tablaPacientes.indexPathForSelectedRow
            let indice = indexPath?.row
            if indice != nil{
                let nombreCompleto = "\(arrPacientes[indice!][EnumPacienteDetalle.NOMBRE.rawValue]) \(arrPacientes[indice!][EnumPacienteDetalle.AP_PATERNO.rawValue]) \(arrPacientes[indice!][EnumPacienteDetalle.AP_MATERNO.rawValue])"
                let email = arrPacientes[indice!][EnumPacienteDetalle.EMAIL.rawValue]
                let tel = arrPacientes[indice!][EnumPacienteDetalle.TEL.rawValue]
                // let email = "pruebaEmail"
                // let tel = "pruebaTel"
                    
                let infoPacienteVC = segue.destination as! InfoPacienteVC
                infoPacienteVC.nombreCompletoPaciente = nombreCompleto
                infoPacienteVC.emailPaciente = email
                infoPacienteVC.telefonoPaciente = tel
                }
        }
    }
}

extension ListaPacienteVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrPacientes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPaciente", for: indexPath)
        
        celda.textLabel?.text = "\(arrPacientes[indexPath.row][EnumPacienteDetalle.NOMBRE.rawValue]) \(arrPacientes[indexPath.row][EnumPacienteDetalle.AP_PATERNO.rawValue])"
        
        return celda
    }
}
