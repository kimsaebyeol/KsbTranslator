//
//  JapanTransViewController.swift
//  translator
//
//  Created by 19swu03 on 2020/05/02.
//  Copyright © 2020 19swu03. All rights reserved.
//

import UIKit

class JapanTransViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    @IBOutlet var japanesePicker: UIPickerView!
    @IBOutlet var JapaneseTransButton: UIButton!
    @IBOutlet var JapaneseUpDownSeg: UISegmentedControl!
    @IBOutlet var JapnaneseTransLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    let consonantkorArray:[String] = ["ㄱ","ㅋ","ㅅ","ㅈ","ㄷ","ㅌ","ㅍ","ㄴ","ㅎ","ㅁ","ㅇ","ㄹ"]
    let vowelkorArray:[String] = ["ㅏ","ㅣ","ㅜ","ㅔ","ㅗ","ㅑ","ㅠ","ㅛ"]
    let japDownArray:[String] = ["が","ぎ","ぐ","げ","ご","ぎゃ","ぐぎゅ","ぐぎょ",
                                  "か","き","く","け","こ","きゃ","きゅ","きょ",
                                  "さ","し","す","せ","そ","しゃ","しゅ","しょ",
                                  "ざ","じ","ず","ぜ","ぞ","じゃ","じゅ","じょ",
                                  "だ","でぃ","どぅ","で","ど","댜(변환x)","でゅ","됴(변환x)",
                                  "た","てぃ","とぅ","て","と","탸(변환x)","てゅ","툐(변환x)",
                                  "ぱ","ぴ","ぷ","ぺ","ぽ","ぴゃ","ぴゅ","ぴょ",
                                  "な","に","ぬ","ね","の","にゃ","にゅ","にょ",
                                  "は","ひ","ふ","へ","ほ","ひゃ","ひゅ","ひょ",
                                  "ま","み","む","め","も","みゃ","みゅ","みょ",
                                  "あ","い","う","え","お","や","ゆ","よ",
                                  "ら","り","る","れ","ろ","りゃ","りゅ","りょ"]
    
    let japUpArray:[String] = ["ガ","ギ","グ","ゲ","ゴ","ギャ","グギュ","グギョ",
                               "カ","キ","ク","ケ","コ","キャ","キュ","キョ",
                               "サ","シ","ス","セ","ソ","シャ","シュ","ショ",
                               "ザ","ジ","ズ","ゼ","ゾ","ジャ","ジュ","ジョ",
                               "ダ","ディ","ドゥ","デ","ド","댜(변환x)","デュ","됴(변환x)",
                               "タ","ティ","トゥ","テ","ト","탸(변환x)","テュ","툐(변환x)",
                               "パ","ピ","プ","ペ","ポ","ピャ","ピュ","ピョ",
                               "ナ","ニ","ヌ","ネ","ノ","ニャ","ニュ","ニョ",
                               "ハ","ヒ","フ","ヘ","ホ","ヒャ","ヒュ","ヒョ",
                               "マ","ミ","ム","メ","モ","ミャ","ミュ","ミョ",
                               "ア","イ","ウ","エ","オ","ヤ","ユ","ヨ",
                               "ラ","リ","ル","レ","ロ","リャ","リュ","リョ"]
        
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
        return consonantkorArray.count }
        else {
        return vowelkorArray.count }
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row:Int, forComponent component: Int) -> String? {
        if component == 0 {
        return consonantkorArray[row]}
        else {
        return vowelkorArray[row] }
        
    }
    
    @IBAction func JTransButton(_ sender: UIButton) {

        let selectedcon : Int = self.japanesePicker.selectedRow(inComponent: 0)
        let selectedvo : Int = self.japanesePicker.selectedRow(inComponent: 1)
        
        let transJapaneseDown : String! = japDownArray[8 * selectedcon + selectedvo]
        let transJapaneseUp : String! = japUpArray[8 * selectedcon + selectedvo]
        
        if (JapaneseUpDownSeg.selectedSegmentIndex==1){
            self.JapnaneseTransLabel.text = transJapaneseUp
        } else {
            self.JapnaneseTransLabel.text = transJapaneseDown
        }
    }
    
   // let selectedcon :
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
