//
//  InfoSesionPacienteVC.swift
//  NutritivApp
//
//  Created by user189858 on 11/16/21.
//

import UIKit

class InfoSesionPacienteVC: UIViewController {

    @IBOutlet weak var lblnombrePaciente: UILabel!
    
    var nombrePaciente: String = "Sin Nombre"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblnombrePaciente.text = nombrePaciente
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
