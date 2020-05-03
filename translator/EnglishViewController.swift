//
//  EnglishViewController.swift
//  translator
//
//  Created by 19swu03 on 2020/05/02.
//  Copyright © 2020 19swu03. All rights reserved.
//

import UIKit

class EnglishViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource  {
    
    override func viewDidLoad() {
         super.viewDidLoad()

         // Do any additional setup after loading the view.
     }

    @IBOutlet var EnglishPicker: UIPickerView!
    
    let langArray: [String] = ["자음","모음","숫자"]
    let langUpDown:[String] = ["대문자","소문자"]
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
        return langArray.count }
        else {
        return langUpDown.count }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row:Int, forComponent component: Int) -> String? {
        if component == 0 {
        return langArray[row]}
        else {
        return langUpDown[row] }
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! EnglishTransViewController
        let pickerupdown:String = langUpDown[self.EnglishPicker.selectedRow(inComponent: 1)]
        let pickerlan:String = langArray[self.EnglishPicker.selectedRow(inComponent: 0)]
        
        destVC.updown = pickerupdown
        destVC.englan = pickerlan
        
    }
    
    
      

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
