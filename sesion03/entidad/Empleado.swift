//
//  Empleado.swift
//  sesion03
//
//  Created by DAMII on 31/03/25.
//

import UIKit

class Empleado {
    //atributos
    var codigo:Int
    var nombres:String
    var apellidos:String
    var edad:Int
    
    init(codigo: Int, nombres: String, apellidos: String, edad: Int) {
        self.codigo = codigo
        self.nombres = nombres
        self.apellidos = apellidos
        self.edad = edad
    }
    func estado()->String{
        if edad>17{
            return "Mayor de edad"
        }
        else{
            return "Menor de edad"
        }
    }
}
