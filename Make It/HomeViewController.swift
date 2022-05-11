//
//  HomeViewController.swift
//  Make It
//
//  Created by 清水　佳奈音 on 2022/01/11.
//

import UIKit

class HomeViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    let dt = Date()
    let formatter = DateFormatter()
    func ddate(){
        formatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "Md", options: 0, locale: Locale(identifier: "en_JP"))
    
    }
   //フォトライブラリ
    @IBOutlet var photoImageView: UIImageView!
    @IBAction func selectimage(){
        let imagePickerController: UIImagePickerController = UIImagePickerController()
        
        imagePickerController.sourceType = UIImagePickerController.SourceType.photoLibrary
        imagePickerController.delegate = self
        imagePickerController.allowsEditing = true
        
        self.present(imagePickerController, animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let image = info[.originalImage] as? UIImage
        
        photoImageView.image = image
        
        self.dismiss(animated: true, completion: nil)
    }
        
    
//戻るボタン
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
    }
    //日付記入
    @IBAction func date(){
        self.ddate()
        DateLabel.text = String(formatter.string(from: dt))
    }
    //日付記入欄
    @IBOutlet var DateLabel: UILabel!
    //目標記入欄
    @IBOutlet var GoalTextField: UITextField!
    //合計時間記入欄
    @IBOutlet var TotalTextField: UITextField!
    //Userdefaults関連
    var saveData: UserDefaults = UserDefaults.standard
    @IBAction func save(){
        saveData.set(GoalTextField.text, forKey: "Goal")
        saveData.set(TotalTextField.text, forKey: "Total")
        saveData.set(TopicTextField.text, forKey: "Topic")
        saveData.set(DateTextField.text, forKey: "Date")
        saveData.set(DateLabel.text, forKey: "Today")
    }
    //期日表示
    //左
    @IBOutlet var TopicTextField: UITextField!
    //右
    @IBOutlet var DateTextField: UITextField!

    //TODO欄
    @IBOutlet var Label1: UILabel!
    @IBOutlet var Label2: UILabel!
    @IBOutlet var Label3: UILabel!
    @IBOutlet var Label4: UILabel!
    @IBOutlet var Label5: UILabel!
    @IBOutlet var Label6: UILabel!
    @IBOutlet var Label7: UILabel!
    @IBOutlet var Label8: UILabel!
    @IBOutlet var Label9: UILabel!
    @IBOutlet var Label10: UILabel!
    //memo欄
    @IBOutlet var memolabel: UILabel!
    //Word欄
    @IBOutlet var word1Label: UILabel!
    @IBOutlet var word2Label: UILabel!
    @IBOutlet var word3Label: UILabel!
    @IBOutlet var word4Label: UILabel!
    @IBOutlet var word5Label: UILabel!
    @IBOutlet var word6Label: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        GoalTextField.text = saveData.object(forKey: "Goal") as? String
        TotalTextField.text = saveData.object(forKey: "Total") as? String
        TopicTextField.text = saveData.object(forKey: "Topic") as? String
        DateTextField.text = saveData.object(forKey: "Date") as? String
        DateLabel.text = saveData.object(forKey: "Today") as? String
        Label1.text = saveData.object(forKey: "1") as? String
        Label2.text = saveData.object(forKey: "2") as? String
        Label3.text = saveData.object(forKey: "3") as? String
        Label4.text = saveData.object(forKey: "4") as? String
        Label5.text = saveData.object(forKey: "5") as? String
        Label6.text = saveData.object(forKey: "6") as? String
        Label7.text = saveData.object(forKey: "7") as? String
        Label8.text = saveData.object(forKey: "8") as? String
        Label9.text = saveData.object(forKey: "9") as? String
        Label10.text = saveData.object(forKey: "10") as? String
        memolabel.text = saveData.object(forKey: "memo") as? String
        word1Label.text = saveData.object(forKey: "word1") as? String
        word2Label.text = saveData.object(forKey: "word2") as? String
        word3Label.text = saveData.object(forKey: "word3") as? String
        word4Label.text = saveData.object(forKey: "word4") as? String
        word5Label.text = saveData.object(forKey: "word5") as? String
        word6Label.text = saveData.object(forKey: "word6") as? String
        Label1.adjustsFontSizeToFitWidth = true
        Label2.adjustsFontSizeToFitWidth = true
        Label3.adjustsFontSizeToFitWidth = true
        Label4.adjustsFontSizeToFitWidth = true
        Label5.adjustsFontSizeToFitWidth = true
        Label6.adjustsFontSizeToFitWidth = true
        Label7.adjustsFontSizeToFitWidth = true
        Label8.adjustsFontSizeToFitWidth = true
        Label9.adjustsFontSizeToFitWidth = true
        Label10.adjustsFontSizeToFitWidth = true
        memolabel.adjustsFontSizeToFitWidth = true
        word1Label.adjustsFontSizeToFitWidth = true
        word2Label.adjustsFontSizeToFitWidth = true
        word3Label.adjustsFontSizeToFitWidth = true
        word4Label.adjustsFontSizeToFitWidth = true
        word5Label.adjustsFontSizeToFitWidth = true
        word6Label.adjustsFontSizeToFitWidth = true
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
