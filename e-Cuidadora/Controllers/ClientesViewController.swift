//
//  ClientesViewController.swift
//  e-Cuidadora
//
//  Created by MacBook Pro i7 on 09/03/2018.
//  Copyright © 2018 CJSM. All rights reserved.
//

import UIKit
import Parchment

class ClientesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let firstViewController = storyboard.instantiateViewController(withIdentifier: "Third")
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "Fourth")
        
        // Initialize a FixedPagingViewController and pass
        // in the view controllers.
        let pagingViewController = FixedPagingViewController(viewControllers: [
            firstViewController,
            secondViewController
            ])
        
        
        // Make sure you add the PagingViewController as a child view
        // controller and contrain it to the edges of the view.
        addChildViewController(pagingViewController)
        view.addSubview(pagingViewController.view)
        view.constrainToEdges(pagingViewController.view)
        pagingViewController.didMove(toParentViewController: self)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
