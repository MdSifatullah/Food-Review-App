//
//  ViewController.swift
//  Food Review App
//
//  Created by Md Sifat on 12/11/19.
//  Copyright © 2019 Md Sifat. All rights reserved.
//

import UIKit


var arr = ["Bisk Club Masala Rusk", "BBQ Chanachur pack", "All time ghee toast", "Mixed fruit jam", "Power energy Drinks", "Xcel Mint", "All Time Plain Cake"]
var imgArr = [UIImage(named: "Bisk Club Masala Rusk"), UIImage(named: "BBQ Chanachur pack"), UIImage(named: "all_time_ghee_toast"), UIImage(named: "mixed_fruit_jam"), UIImage(named: "power-bottle"), UIImage(named: "xcel_mint"), UIImage(named: "all_time_plain_cake"),  ]
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.ImageView?.image = imgArr[indexPath.row]
        cell.ListTitleLbl?.text = arr[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(identifier: "SecondViewController") as? SecondViewController
        vc?.image = imgArr[indexPath.row]!
        vc?.name = arr[indexPath.row]
        self.navigationController?.pushViewController(vc!, animated: true)
    }




}

