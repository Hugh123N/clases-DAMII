//
//  ViewController.swift
//  sesion03
//
//  Created by DAMII on 31/03/25.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate{
    @IBOutlet weak var txtCodigos: UITextField!
    @IBOutlet weak var txtNombres: UITextField!
    @IBOutlet weak var txtApellidos: UITextField!
    @IBOutlet weak var txtEdad: UITextField!
    @IBOutlet weak var lblEstado: UILabel!
    
    @IBOutlet weak var imgFotos: UIImageView!
    @IBOutlet weak var txtSexo: UITextField!
    //declarar
    var obj:Empleado!
    
    //declarar atributo de la clase UIPICKERView
    var picker=UIPickerView()
    //arreglo lineal tipo cadena
    var sexos=["masculino","femenino","otros"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //vincular el atributo picker con el atributo txtSexo
        txtSexo.inputView=picker
        //vincular el atributo picker con el origen de datos
        picker.dataSource=self
    }
    @IBAction func btnProcesar(_ sender: UIButton) {
        //crear objeto de la clase Empleado
        obj=Empleado(codigo: leerCodigo(), nombres: leerNombres(), apellidos: leerApellidos(), edad: leerEdad())
        //mostrar estado
        lblEstado.text=obj.estado()
    }
    
    @IBAction func btnResumen(_ sender: UIButton) {
        if obj==nil{
            
        }
        
      //invocar al segue "resumen"
        performSegue(withIdentifier: "resumen", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //enviar variables a otra pantalla
        //crear objeto de la clase ResumenViewController
        let pantalla2=segue.destination as! ResumenViewController
        //acceder el objeto bean
        pantalla2.bean=obj
    }
    
    //funciones para leer las caja
    func leerCodigo()->Int{
        return Int(txtCodigos.text ?? "0") ?? 0
    }
    func leerNombres()->String{
        return txtNombres.text ?? ""
    }
    func leerApellidos()->String{
        return txtApellidos.text ?? ""
    }
    func leerEdad()->Int{
        return Int(txtEdad.text ?? "0") ?? 0
    }
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent
        component: Int) -> Int {
        return sexos.count
    }
    //funcion del delegado UIPICKERVIEWDELEGATE para mostrarlos
    //valores del arreg;o picker
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) {
        txtSexo.text=sexos[row]
        imgFotos.image=UIImage(named:sexos [row])
    }
}

