//
//  TodoViewController.swift
//  Make It
//
//  Created by 清水　佳奈音 on 2022/01/25.
//

import UIKit

class TodoViewController: UIViewController {
    @IBOutlet var TextFiled1: UITextField!
    @IBOutlet var TextFiled2: UITextField!
    @IBOutlet var TextFiled3: UITextField!
    @IBOutlet var TextFiled4: UITextField!
    @IBOutlet var TextFiled5: UITextField!
    @IBOutlet var TextFiled6: UITextField!
    @IBOutlet var TextFiled7: UITextField!
    @IBOutlet var TextFiled8: UITextField!
    @IBOutlet var TextFiled9: UITextField!
    @IBOutlet var TextFiled10: UITextField!
    //データ保存関連
    var saveData: UserDefaults = UserDefaults.standard
    @IBAction func save(){
        saveData.set(TextFiled1.text, forKey: "1")
        saveData.set(TextFiled2.text, forKey: "2")
        saveData.set(TextFiled3.text, forKey: "3")
        saveData.set(TextFiled4.text, forKey: "4")
        saveData.set(TextFiled5.text, forKey: "5")
        saveData.set(TextFiled6.text, forKey: "6")
        saveData.set(TextFiled7.text, forKey: "7")
        saveData.set(TextFiled8.text, forKey: "8")
        saveData.set(TextFiled9.text, forKey: "9")
        saveData.set(TextFiled10.text, forKey: "10")
    }
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        TextFiled1.text = saveData.object(forKey: "1") as? String
        TextFiled2.text = saveData.object(forKey: "2") as? String
        TextFiled3.text = saveData.object(forKey: "3") as? String
        TextFiled4.text = saveData.object(forKey: "4") as? String
        TextFiled5.text = saveData.object(forKey: "5") as? String
        TextFiled6.text = saveData.object(forKey: "6") as? String
        TextFiled7.text = saveData.object(forKey: "7") as? String
        TextFiled8.text = saveData.object(forKey: "8") as? String
        TextFiled9.text = saveData.object(forKey: "9") as? String
        TextFiled10.text = saveData.object(forKey: "10") as? String
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
