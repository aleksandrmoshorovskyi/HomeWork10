//
//  CVVTextFieldDelegate.swift
//  Lesson10HW
//
//  Created by Aleksandr Moroshovskyi on 27.03.2024.
//

import UIKit

class CVVTextFieldDelegate: NSObject, UITextFieldDelegate {

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {

        return checkTextField(textField, in: range, str: string, for: 3)
    }
}
