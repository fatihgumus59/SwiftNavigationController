//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by Fatih Gümüş on 4.12.2023.
//

import UIKit

class AnasayfaVC: UIViewController {

    @IBOutlet weak var anasayfaLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        anasayfaLabel.text = "Hoşgeldin!"
    }


    @IBAction func yapButton(_ sender: Any) {
        anasayfaLabel.text = "Merhaba!"
        
    }
    @IBAction func baslaButton(_ sender: Any) {
        performSegue(withIdentifier: "anasayfaToOyunEkrani", sender: nil)
        
    }
}

