//
//  CommonTextField.swift
//  Lesson10HW
//
//  Created by Aleksandr Moroshovskyi on 27.03.2024.
//

import UIKit

func checkTextField(_ textField: UITextField, in range: NSRange, str string: String, for count: Int) -> Bool {
    
    let currentText = textField.text ?? ""
    
    guard let stringRange = Range(range, in: currentText) else { return false }
    
    let updatedText = currentText.replacingCharacters(in: stringRange, with: string)

    return updatedText.count <= count
}
