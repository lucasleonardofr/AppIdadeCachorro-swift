//
//  ViewController.swift
//  Idade de cachorro
//
//  Created by Lucas Leonardo on 24/10/20.
//  Copyright © 2020 Lucas Leonardo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var legendaResultado: UILabel!
    @IBOutlet weak var campoIdadeCachorro: UITextField!
    @IBAction func descobrirIdade(_ sender: Any) {
        
//Meu primeiro codigo em swift
//     let idade   = Int(campoIdadeCachorro.text!)! * 7
//       legendaResultado.text = "A idade do cachorro é: " + String (idade)
//
//       if idade == 0 {
//          legendaResultado.text = "É necessário digitar uma idade válida!"
//       }
//       if campoIdadeCachorro.text == nil {
//           legendaResultado.text = "Digite uma idade!"
//        }
 
//Tratativas caso o campoIdadeCachorro seja vazio
        if campoIdadeCachorro.text != nil && campoIdadeCachorro.text != ""  {
            if let campoCachorro = campoIdadeCachorro.text {
                let idade = Int(campoCachorro)
                guard let idadeInteger = idade else { return }
                let idadeValue = idadeInteger * 7
                let idadeString = String (idadeValue)
                legendaResultado.text = "A idade do cachorro é: \(idadeString)"
            }
        } else {
            legendaResultado.text = "Digite uma idade!"
        }

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

