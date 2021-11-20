//
//  PatientsListVC.swift
//  NutritivApp
//
//  Created by user189858 on 11/15/21.
//

import UIKit

class PatientsListVC: UIViewController {
    
    var arrPacientes = ["Rubén", "Fernando", "Víctor", "Arturo", "Alex"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrPacientes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPaciente", for: indexPath)
        
        celda.textLabel?.text = arrPacientes[indexPath.row]
        
        return celda
    }
    
    
}
