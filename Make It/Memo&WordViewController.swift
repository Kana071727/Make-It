//
//  Memo&WordViewController.swift
//  Make It
//
//  Created by 清水　佳奈音 on 2022/02/08.
//

import UIKit

class Memo_WordViewController: UIViewController {
    @IBOutlet var memoTextView: UITextView!
    @IBOutlet var word1TextFiled: UITextField!
    @IBOutlet var word2TextFiled: UITextField!
    @IBOutlet var word3TextFiled: UITextField!
    @IBOutlet var word4TextFiled: UITextField!
    @IBOutlet var word5TextFiled: UITextField!
    @IBOutlet var word6TextField: UITextField!
    var saveData: UserDefaults = UserDefaults.standard
    var wordArray: [Dictionary<String, String>] = []
    @IBAction func save(){
        saveData.set(memoTextView.text, forKey: "memo")
        saveData.set(word1TextFiled.text, forKey: "word1")
        saveData.set(word2TextFiled.text, forKey: "word2")
        saveData.set(word3TextFiled.text, forKey: "word3")
        saveData.set(word4TextFiled.text, forKey: "word4")
        saveData.set(word5TextFiled.text, forKey: "word5")
        saveData.set(word6TextField.text, forKey: "word6")
    }
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func save2(){
        let wordDictionary = ["WORD1": word1TextFiled.text! && word3TextFiled.text! && word5TextFiled.text!,"WORD2": word2TextFiled.text! && word4TextFiled.text! && word6TextField.text!]

        wordArray.append(wordDictionary)
        saveData.set(wordArray, forKey: "WORD")
        
        saveData.set(memoTextView.text, forKey: "memo")
        saveData.set(word1TextFiled.text, forKey: "word1")
        saveData.set(word2TextFiled.text, forKey: "word2")
        saveData.set(word3TextFiled.text, forKey: "word3")
        saveData.set(word4TextFiled.text, forKey: "word4")
        saveData.set(word5TextFiled.text, forKey: "word5")
        saveData.set(word6TextField.text, forKey: "word6")
    }
    @IBAction func back2(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        if saveData.array(forKey: "WORD") != nil {
            wordArray = saveData.array(forKey: "WORD") as! [Dictionary<String, String>]
        }
        memoTextView.text = saveData.object(forKey: "memo") as? String
        word1TextFiled.text = saveData.object(forKey: "word1") as? String
        word2TextFiled.text = saveData.object(forKey: "word2") as? String
        word3TextFiled.text = saveData.object(forKey: "word3") as? String
        word4TextFiled.text = saveData.object(forKey: "word4") as? String
        word5TextFiled.text = saveData.object(forKey: "word5") as? String
        word6TextField.text = saveData.object(forKey: "word6") as? String
        // Do any additional setup after loading the view.
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
