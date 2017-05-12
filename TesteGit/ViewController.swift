//
//  ViewController.swift
//  TesteGit
//
//  Created by Matheus Pereiradarocha on 5/10/17.
//  Copyright © 2017 Matheus Pereiradarocha. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var countryField: UITextField!
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var successImg: UIImageView!
    @IBOutlet weak var pillImg: UIImageView!
    @IBOutlet weak var pillTitle: UILabel!
    @IBOutlet weak var pillValue: UILabel!
    @IBOutlet weak var addLbl: UILabel!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var stateLbl: UILabel!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var nameValue: UITextField!
    @IBOutlet weak var cityValue: UITextField!
    @IBOutlet weak var streetValue: UITextField!
    
    let states = ["Alaska","Alabama", "Arkansas", "California","New York"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        countryLbl.isHidden = true
        countryField.isHidden = true
        buyNowBtn.isHidden = true
    }
    @IBAction func buyPressed(_ sender: Any) {
        successImg.isHidden = false
        statePicker.isHidden = true
        countryLbl.isHidden = true
        countryField.isHidden = true
        buyNowBtn.isHidden = true
        statePickerBtn.isHidden = true
        streetValue.isHidden = true
        cityValue.isHidden = true
        nameValue.isHidden = true
        divider.isHidden = true
        nameLbl.isHidden = true
        stateLbl.isHidden = true
        cityLbl.isHidden = true
        addLbl.isHidden = true
        pillValue.isHidden = true
        pillTitle.isHidden = true
        pillImg.isHidden = true
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        //indica o numero de colunas
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryLbl.isHidden = false
        countryField.isHidden = false
        buyNowBtn.isHidden = false
    }
}

