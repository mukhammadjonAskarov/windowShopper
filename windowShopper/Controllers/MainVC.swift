//
//  ViewController.swift
//  windowShopper
//
//  Created by Mukhammadjon Askarov on 6/29/19.
//  Copyright © 2019 Mukhammadjon Askarov. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var currencyTxt: CurrencyTxtField!
    @IBOutlet weak var itemPriceTxt: CurrencyTxtField!
    
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
  
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 0.8820098459)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        currencyTxt.inputAccessoryView = calcBtn
        itemPriceTxt.inputAccessoryView = calcBtn
    
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    @objc func calculate(){
        
        if let wageTxt = currencyTxt.text, let priceTxt = itemPriceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                  view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                
                resultLbl.text = "\(Wage.getHours(forWage: wage, forPrice: price))"
                
            }
            
        }
       
    }
    @IBAction func clearBtnPressed(_ sender: Any) {
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        currencyTxt.text = ""
        itemPriceTxt.text = ""
        
    }
    
}

