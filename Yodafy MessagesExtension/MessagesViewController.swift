//
//  MessagesViewController.swift
//  Yodafy MessagesExtension
//
//  Created by Jack Desmond on 12/30/21.
//

import UIKit
import Messages

class MessagesViewController: MSMessagesAppViewController {
    //UI
    @IBOutlet weak var YodifyTitle: UILabel!
    @IBOutlet weak var YodifyImage: UIImageView!
    @IBOutlet weak var Description: UILabel!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "StartTranslating" {
            let vc = segue.destination as!  TranslateViewController
            vc.CurrentConversation = self.activeConversation
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.requestPresentationStyle(MSMessagesAppPresentationStyle.expanded)
            }
        }
    }
}
