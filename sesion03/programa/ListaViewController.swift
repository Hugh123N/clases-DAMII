//
//  ListaViewController.swift
//  sesion03
//
//  Created by DAMII on 14/04/25.
//

import UIKit

class ListaViewController: UIViewController, UITableViewController, UITableViewDataSource {
    
    
    let items = ["Java", "C#", "JavaScript", "Python", "Swift", "Kotlin"]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate= self
        tableView.register(IUTableViewCell.self,    forCellResourceIdentifier: "cellsIdentifier")
        
     }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellsIdentifier", for: indexPath)
    }

}
