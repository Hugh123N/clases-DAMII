//
//  ResumenViewController.swift
//  sesion03
//
//  Created by DAMII on 31/03/25.
//

import UIKit

class ResumenViewController: UIViewController {

    @IBOutlet weak var lblCodigo: UILabel!
    @IBOutlet weak var lblNombres: UILabel!
    @IBOutlet weak var lblApellidos: UILabel!
    @IBOutlet weak var lblEdad: UILabel!
    @IBOutlet weak var lblEstado: UILabel!
    //Declarar objeto de la clasee
    var bean:Empleado!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblCodigo.text=String(bean.codigo)
        lblNombres.text=bean.nombres
        lblApellidos.text=bean.apellidos
        lblNombres.text=String(bean.edad)
        lblEstado.text=bean.estado()
    }
 
    @IBAction func btnVolver(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
