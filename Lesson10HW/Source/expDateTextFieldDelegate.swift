//
//  expDateTextFieldDelegate.swift
//  Lesson10HW
//
//  Created by Aleksandr Moroshovskyi on 08.04.2024.
//

import UIKit

class expDateTextFieldDelegate : NSObject, UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        debugPrint("expDateTextFieldDelegate -> textFieldShouldReturn")
        textField.endEditing(true)
        
        return true
    }
}
