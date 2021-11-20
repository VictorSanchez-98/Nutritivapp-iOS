//
//  InfoPacienteVC.swift
//  NutritivApp
//
//  Created by user189858 on 11/15/21.
//

import UIKit

class InfoPacienteVC: UIViewController {

    @IBOutlet weak var lblNombrePaciente: UILabel!
    @IBOutlet weak var lblEmailPaciente: UILabel!
    @IBOutlet weak var lblTelefonoPaciente: UILabel!
    
    var nombreCompletoPaciente: String = "Sin nombre"
    var emailPaciente: String = "Sin email"
    var telefonoPaciente: String = "Sin teléfono"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        lblNombrePaciente.text = nombreCompletoPaciente
        lblEmailPaciente.text = emailPaciente
        lblTelefonoPaciente.text = telefonoPaciente
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
