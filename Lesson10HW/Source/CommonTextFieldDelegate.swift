//
//  CommonTextFieldDelegate.swift
//  Lesson10HW
//
//  Created by Aleksandr Moroshovskyi on 08.04.2024.
//

import UIKit

class CommonTextFieldDelegate : NSObject, UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.endEditing(true)
        
        return false
    }
}
