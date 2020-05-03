//
//  EglishTransViewController.swift
//  translator
//
//  Created by 19swu03 on 2020/05/02.
//  Copyright © 2020 19swu03. All rights reserved.
//

import UIKit

class EnglishTransViewController: UIViewController,UITextFieldDelegate  {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { textField.resignFirstResponder()
    return true }
    
     override func viewDidLoad() {
        
            super.viewDidLoad()

            // Do any additional setup after loading the view.
            //if let contentString = info {
                  //EnglishInfoLabel.text = contentString
              }
        
    
    @IBOutlet var EnglishInfoLabel: UILabel!
    @IBOutlet var EnglishTextField: UITextField!
    @IBOutlet var EnglishTransButton: UIButton!
    @IBOutlet var EnglishTransLabel: UILabel!
    
    var updown:String? //피커뷰1의 값을 EnglishVC에서 받아옴
    var englan:String? //피커뷰0의 값을 EnglishVC에서 받아옴


    //한글 입력값
    let consonantkor:[String] = ["ㄱ","ㄴ","ㄷ","ㄹ","ㅁ","ㅂ","ㅅ","ㅇ","ㅈ","ㅊ","ㅋ","ㅌ","ㅍ","ㅎ",
    "ㄲ","ㄸ","ㅃ","ㅆ","ㅉ"]
    let vowelkor:[String] = ["ㅏ","ㅓ","ㅗ","ㅜ","ㅡ","ㅣ","ㅐ","ㅔ","ㅚ","ㅟ","ㅑ","ㅛ","ㅠ","ㅒ","ㅖ","ㅘ","ㅙ","ㅝ","ㅞ","ㅢ"]
    let number : [String] = ["0","1","2","3","4","5","6","7","8","9"]
    
    //자음 소문자
    let consonantengdown:[String] = ["g,k","n","d,t","r,l","m","b,p","s","ng","j","ch","k","t","p",
    "h","kk","tt","pp","ss","jj"]
    //자문 대문자
    let consonantengup:[String] = ["G,K","N","D,T","R,L","M","B,P","S","NG","J","CH","K","T","P",
    "H","KK","TT","PP","SS","JJ"]
    
    //모음 소문자
    let vowelengdown:[String] = ["a","eo","o","u","eu","i","ae","e","oe","wi","ya","yo","yu","yae","ye","wa",
    "wae","wo","we","ui"]
    //모음 대문자
    let vowelengup:[String] =  ["A","EO","O","U","EU","I","AE","E","OE","WI","YA","YO","YU","YAE","YE","WA",
    "WAE","WO","WE","UI"]
    
    //숫자 소문자
    let numup:[String] = ["zero","one","two","three","four","five","six","seven","eight","nine"]
    //숫자 대문자
    let numdown:[String] = ["ZERO","ONE","TWO","THREE","FOUR","FIVE","SIX","SEVEN","EIGHT","NINE"]
    
    
    @IBAction func ButtonTranslate(_ sender: UIButton) {
        let input = EnglishTextField.text! //키보드 입력값
        
        if englan == "자음" { //피커뷰0에서 자음을 선택했을 때
            for i in 0..<consonantkor.count { // 자음의 갯수만큼 반복
                //피커뷰1에서 대문자를 선택했을 때
                if input == consonantkor[i] && updown == "대문자" {
                    EnglishTransLabel.text = consonantengup[i]
                    EnglishInfoLabel.text = "입력값은" + input + "입니다."
                // 피커뷰1에서 소문자를 선택했을 때
                } else if input == consonantkor[i] && updown == "소문자" {
                    EnglishTransLabel.text = consonantengdown[i]
                    EnglishInfoLabel.text = "입력값은" + input + "입니다."
                }
            }
        } else if englan == "모음" { //피커뷰0에서 모음을 선택했을 때
            for i in 0..<vowelkor.count {
                //피커뷰1에서 대문자를 선택했을 때
                if input == vowelkor[i] && updown == "대문자" {
                    EnglishTransLabel.text = vowelengup[i]
                    EnglishInfoLabel.text = "입력값은" + input + "입니다."
                // 피커뷰1에서 소문자를 선택했을 때
                }   else if input == vowelkor[i] && updown == "소문자" {
                    EnglishTransLabel.text = vowelengdown[i]
                    EnglishInfoLabel.text = "입력값은" + input + "입니다."
                }
            }
        } else { //피커뷰0에서 숫자를 선택했을 때
            for i in 0...9 {
                //피커뷰1에서 대문자를 선택했을 때
                if input == number[i]  && updown == "대문자" {
                    EnglishTransLabel.text = numup[i]
                    EnglishInfoLabel.text = "입력값은" + input + "입니다."
                // 피커뷰1에서 소문자를 선택했을 때
                } else if input == number[i] && updown == "소문자" {
                    EnglishTransLabel.text = numup[i]
                    EnglishInfoLabel.text = "입력값은" + input + "입니다."
                }
            }
        }
    }
}

