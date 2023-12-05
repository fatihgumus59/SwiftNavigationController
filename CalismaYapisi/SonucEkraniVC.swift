//
//  SonucEkranıVC.swift
//  CalismaYapisi
//
//  Created by Fatih Gümüş on 5.12.2023.
//

import UIKit

class SonucEkraniVC: UIViewController {

    @IBOutlet weak var sonucEkraniLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func kapatButton(_ sender: Any) {
        
        //bulunduğu sayfayı kapatır.
        self.dismiss(animated: true)
    }
}
