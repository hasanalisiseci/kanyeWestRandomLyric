//
//  ViewController.swift
//  KanyeRestAPI
//
//  Created by Hasan Ali on 28.02.2020.
//  Copyright © 2020 Hasan Ali Şişeci. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var textView: UITextView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.isEditable = false
        titleLabel.text = "Kanye West Lyrics"
        imageView.image = UIImage.init(named: "kanye")
        getLyric()
        
    }

    @IBAction func refreshButton(_ sender: Any) {
        getLyric()
    }
    

    func getLyric() {
        // Hedef URL'yi tanımlıyoruz
        let url = URL(string: "https://api.kanye.rest/?format=text")
            do {
                //URL ile ulaştığımız veriyi String olarak alıyoruz.
                let contents = try String(contentsOf: url!)
                //String değeri text view'a gönderiyoruz.
                textView.text = "\"\(contents)\""
            } catch {
                // İçerik yüklenemez ise
                textView.text = "Could not load"
            }
        }
    }
    

