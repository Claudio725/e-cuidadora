//
//  AgendamentoViewController.swift
//  Example
//
//  Created by MacBook Pro i7 on 08/03/2018.
//  Copyright © 2018 Martin Rechsteiner. All rights reserved.
//

import UIKit

class AgendamentoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var modulos = ["Raquel", "Mariana", "Joana", "Paula", "Ana Luiza", "Ana Carla",
                   "Jurema", "Marluce" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - delegate
    */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return modulos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        // Configure the cell...
        cell.textLabel?.text = modulos[indexPath.row]
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
