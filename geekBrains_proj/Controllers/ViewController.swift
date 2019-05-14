//
//  ViewController.swift
//  lesson_01
//
//  Created by k.kochemasov on 02/04/2019.
//  Copyright © 2019 k.kochemasov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var usernameInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGR = UITapGestureRecognizer(target: self, action: #selector(hideKeybooard))
        scrollView.addGestureRecognizer(tapGR)
    }
    
    @IBAction func logInButton(_ sender: UIButton) {
        if shouldPerformSegue(withIdentifier: "Show Main Screen", sender: sender) {
            print("Authorization successfull")
        } else {
            showError()
            print("Access denied")
        }
    }
    
    @IBAction func regButton(_ sender: UIButton) {
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @objc private func keyboardWasShown(notification: Notification) {
        let info = notification.userInfo as NSDictionary?
        let keyboardSize = (info?.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
        let contentsInsets = UIEdgeInsets(top: 0, left: 0, bottom: keyboardSize.height, right: 0)
        
        scrollView.contentInset = contentsInsets
        scrollView.scrollIndicatorInsets = contentsInsets
    }
    
    @objc private func keyboardWasHidden(notification: Notification) {
        let contentsInsets = UIEdgeInsets.zero
        
        scrollView.contentInset = contentsInsets
        scrollView.scrollIndicatorInsets = contentsInsets
    }
    
    @objc private func hideKeybooard() {
        scrollView.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard identifier == "Show Main Screen" else {return true}

        if usernameInput.text == "" && passwordInput.text == ""
        {
            return true
        } else {
            showError()
            return false
        }
    }
    
    func showError() {
        let appAlert = UIAlertController(title: "Ошибка!", message: "Поля должны быть пустыми.", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .default)
        self.passwordInput.text = ""
        appAlert.addAction(action)
        
        present(appAlert, animated: true)
    }
}

