//
//  SecondViewController.swift
//  Food Review App
//
//  Created by Md Sifat on 12/11/19.
//  Copyright © 2019 Md Sifat. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var TitileShowLbl: UILabel!
    @IBOutlet weak var BigImageView: UIImageView!
    
    var name = ""
    var image = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TitileShowLbl.text = name
        BigImageView.image = image
        // Do any additional setup after loading the view.
    }
    
}
