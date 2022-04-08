//
//  MessagesViewController.swift
//  Yodafy MessagesExtension
//
//  Created by Jack Desmond on 12/30/21.
//

import UIKit
import Messages

class TranslateViewController: MSMessagesAppViewController, UITextViewDelegate {
    //UI
    @IBOutlet weak var YodifyImage: UIImageView!
    @IBOutlet weak var TextInput: UITextView!
    @IBOutlet weak var TranslateButton: UIButton!
    var CurrentConversation: MSConversation!
    
    @IBAction func TranslateButtonTap(_ sender: Any) {
        let userInput: String = TextInput.text!
        TextInput.endEditing(true)
        
        //Building URL
        let API_KEY = "hqnh9TE6aSmYZ0LfWNnFWAeF"
        let encodedText = userInput.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
        let resourceString = "https://api.funtranslations.com/translate/yoda.json?X-Funtranslations-Api-Secret:\(API_KEY)&text=\(encodedText)"
        let resourceURL = URL(string: resourceString)
        guard resourceURL != nil else {return}
        let session = URLSession.shared
        
        let dataTask = session.dataTask(with: resourceURL!) { (data, response, error) in
            //Check for errors
            if error == nil && data != nil {
                //Parse JSON
                let decoder = JSONDecoder()
                
                do {
                    let welcome = try decoder.decode(Welcome.self, from: data!)
                    let contents = welcome.contents
                    let translation = contents.translated
                    //Sending translated text to iMessage textfield
                    self.CurrentConversation?.insertText(translation, completionHandler: nil)
                }
                catch {
                    print(error)
                }
            }
        }
        //Make the API call
        dataTask.resume()
        // Move to compact mode with delay in animation
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.requestPresentationStyle(MSMessagesAppPresentationStyle.compact)
        }
    }
    @IBAction func expandViewTextFieldTap(_ sender: Any) {
        requestPresentationStyle(MSMessagesAppPresentationStyle.expanded)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TextInput.delegate = self
    }
}

extension TranslateViewController: UITextFieldDelegate {
    //removes key board upon taping done button
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        TextInput.endEditing(true)
        return true
    }
}
