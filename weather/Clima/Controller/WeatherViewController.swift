//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate{

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextFled: UITextField!
    
    var weather
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchTextFled.delegate = self
    }
    @IBAction func searchButton(_ sender: UIButton) {
        searchTextFled.endEditing(true)
        print(searchTextFled.text!)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            print(searchTextFled.text!)
            searchTextFled.endEditing(true)
            return true
        }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        searchTextFled.text = ""
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if textField.text != ""{
            return true
        }else{
            textField.placeholder = "Wajib isi"
            return false
        }
    }
    

}

