//
//  NuevoPacienteVC.swift
//  NutritivApp
//
//  Created by user189858 on 11/17/21.
//

import UIKit

class NuevoPacienteVC: UIViewController {
    
    var arrPacientes = [["Alex", "Serrano", "Durán", "aserrano@tec.mx", "5512341234"],
                        ["Arturo", "Marquez", "N", "amarquez@tec.mx", "5512344321"],
                        ["Fernando", "Melgar", "N", "fmelgar@tec.mx", "5511223344"],
                        ["Rubén", "Villalpando", "Bremont", "rvillalpando@tec.mx", "5544332211"],
                        ["Víctor Alfonso", "Sánchez", "Torres", "vsanchez@tec.mx", "5512123434"]]
    
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfApPaterno: UITextField!
    @IBOutlet weak var tfApMaterno: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfTelefono: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let listaPacientesVC = segue.destination as! ListaPacienteVC
        listaPacientesVC.arrPacientes = self.arrPacientes
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    // Acciones
    @IBAction func btnRegistrar(_ sender: UIButton) {

        // Manejar errores
        let nombre = String(tfNombre.text!)
        let apPaterno = String(tfApPaterno.text!)
        let apMaterno = String(tfApMaterno.text!)
        let email = String(tfEmail.text!)
        let telefono = String(tfTelefono.text!)
        
        if nombre.isEmpty || apPaterno.isEmpty || apMaterno.isEmpty || email.isEmpty || telefono.isEmpty {
            // Error campos vacíos
            let alerta = UIAlertController(title: "Error", message: "Todos los campos deben estar llenados con entradas válidas", preferredStyle: .actionSheet)
            let aceptar = UIAlertAction(title: "Aceptar", style: .destructive, handler: nil)
            alerta.addAction(aceptar)
            present(alerta, animated: true)
        } else {
            arrPacientes.append([nombre, apPaterno, apMaterno, email, telefono])
            // let sortedArray = arr.sort { ($0[0] as? Int) < ($1[0] as? Int) }
            arrPacientes = arrPacientes.sorted{ $0[0] < $1[0] }
        }
    }
}
