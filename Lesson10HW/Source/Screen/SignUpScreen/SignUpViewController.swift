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
    
    //var commonTextFieldDelegate = CommonTextFieldDelegate()
    
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
        
        // MARK: - returnKeyType
        /*
        contentView.firstNameTextField.returnKeyType = .done
        contentView.lastNameTextField.returnKeyType = .done
        contentView.emailNameTextField.returnKeyType = .done
        contentView.passwordTextField.returnKeyType = .done
        contentView.confirmPasswordTextField.returnKeyType = .done
        contentView.countryTextField.returnKeyType = .done
        contentView.cityTextField.returnKeyType = .done
        contentView.addressTextField.returnKeyType = .done
        contentView.expDateTextField.returnKeyType = .done
         */
        
        // MARK: - delegates
        contentView.cardNumberTextField.delegate = cardNumberDelegate
        contentView.cvvTextField.delegate = cvvDelegate
        
        /*
        contentView.firstNameTextField.delegate = commonTextFieldDelegate
        contentView.lastNameTextField.delegate = commonTextFieldDelegate
        contentView.emailNameTextField.delegate = commonTextFieldDelegate
        contentView.passwordTextField.delegate = commonTextFieldDelegate
        contentView.confirmPasswordTextField.delegate = commonTextFieldDelegate
        contentView.countryTextField.delegate = commonTextFieldDelegate
        contentView.cityTextField.delegate = commonTextFieldDelegate
        contentView.addressTextField.delegate = commonTextFieldDelegate
        contentView.expDateTextField.delegate = commonTextFieldDelegate
         */
    }
}
