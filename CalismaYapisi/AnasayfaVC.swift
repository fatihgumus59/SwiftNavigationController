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
        
        let kisiler = Kisiler(ad: "Fatih Gümüş", yas: 23, boy: 180, bekar: true)
        
        performSegue(withIdentifier: "anasayfaToOyunEkrani", sender: kisiler)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "anasayfaToOyunEkrani"{
            
            
            if let veri = sender as? Kisiler{
               
                let gidilecekVc = segue.destination as! OyunEkraniVC
                gidilecekVc.kisi = veri
            }
            
        }
    }
    @IBAction func addTopBarButton(_ sender: Any) {
        print("Başarıyle Eklendi.")
    }
    @IBAction func deleteTopBarButton(_ sender: Any) {
        print("Başarıyla Silindi.")
    }
}

