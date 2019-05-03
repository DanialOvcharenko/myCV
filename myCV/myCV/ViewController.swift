//
//  ViewController.swift
//  myCV
//
//  Created by Mac on 5/3/19.
//  Copyright © 2019 Данил Овчаренко. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    
    @IBOutlet weak var DateLb: UILabel!
    @IBOutlet weak var UniverLb: UILabel!
    @IBOutlet weak var AbbrivLb: UILabel!
    @IBOutlet weak var CityLb: UILabel!
    @IBOutlet weak var LangLb: UILabel!
    @IBOutlet weak var IdeLb: UILabel!
    
    @IBAction func btn1Pressed(_ sender: UIButton) {
        selectedType[0] = true
        selectedType[1] = false
        selectedType[2] = false
        setHighlightingForButtons()
        setHighlightingForLabels()
    }
    
    @IBAction func btn2Pressed(_ sender: UIButton) {
        selectedType[0] = false
        selectedType[1] = true
        selectedType[2] = false
        setHighlightingForButtons()
        setHighlightingForLabels()
    }
    
    @IBAction func btn3Pressed(_ sender: UIButton) {
        selectedType[0] = false
        selectedType[1] = false
        selectedType[2] = true
        setHighlightingForButtons()
        setHighlightingForLabels()
    }
    
    var selectedType = Array(repeating: false, count: 3)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btn1.isHighlighted = false
        btn2.isHighlighted = false
        btn3.isHighlighted = false
    }
    
    func setHighlightingForButtons(){
        if selectedType[0]{
            btn1.isHighlighted = false
            btn2.isHighlighted = true
            btn3.isHighlighted = true
        }else if selectedType[1]{
            btn1.isHighlighted = true
            btn2.isHighlighted = false
            btn3.isHighlighted = true
        }else{
            btn1.isHighlighted = true
            btn2.isHighlighted = true
            btn3.isHighlighted = false
        }
    }
    
    func setHighlightingForLabels(){
        if selectedType[0]{
            DateLb.isHidden = false
            UniverLb.isHidden = true
            AbbrivLb.isHidden = true
            CityLb.isHidden = true
            LangLb.isHidden = true
            IdeLb.isHidden = true
        }else if selectedType[1]{
            DateLb.isHidden = true
            UniverLb.isHidden = false
            AbbrivLb.isHidden = false
            CityLb.isHidden = false
            LangLb.isHidden = true
            IdeLb.isHidden = true
        }else{
            DateLb.isHidden = true
            UniverLb.isHidden = true
            AbbrivLb.isHidden = true
            CityLb.isHidden = true
            LangLb.isHidden = false
            IdeLb.isHidden = false
        }
    }

}

