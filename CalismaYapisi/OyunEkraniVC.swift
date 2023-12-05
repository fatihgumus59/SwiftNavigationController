//
//  OyunEkranVC.swift
//  CalismaYapisi
//
//  Created by Fatih Gümüş on 5.12.2023.
//

import UIKit

class OyunEkraniVC: UIViewController {

    @IBOutlet weak var oyunEkraniLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func geriButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)//eğer sayfada navigation controller kullanıldıysa geri gelme kodu
        
        // anasayfaya dönüş kodu eğer 4 5 farklı sayfa varsa arada ve bu kod çalışırsa direk anasayfaya atar.
        //navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func bitirButton(_ sender: Any) {
        performSegue(withIdentifier: "oyunEkraniToSonucEkrani", sender: nil)
    }
}
