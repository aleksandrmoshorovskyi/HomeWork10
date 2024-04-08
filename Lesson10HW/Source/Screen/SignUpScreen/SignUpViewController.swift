//
//  SignUpViewController.swift
//  Lesson10HW
//

//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var contentView: SignUpView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var cardNumberDelegate = CardNumberTextFieldDelegate()
    var cvvDelegate = CVVTextFieldDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        subscrubeNotifications()
        setup()
    }
    
    private func setup() {
        
        // MARK: - keyboardTypes
        contentView.emailNameTextField.keyboardType = .emailAddress
        
        contentView.passwordTextField.isSecureTextEntry = true
        contentView.confirmPasswordTextField.isSecureTextEntry = true
        contentView.cvvTextField.isSecureTextEntry = true
        
        contentView.cardNumberTextField.keyboardType = .numberPad
        contentView.cvvTextField.keyboardType = .numberPad
        
        // MARK: - delegates
        contentView.cardNumberTextField.delegate = cardNumberDelegate
        contentView.cvvTextField.delegate = cvvDelegate
    }
}
