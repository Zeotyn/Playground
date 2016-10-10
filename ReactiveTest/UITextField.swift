//
//  UITextField.swift
//  ReactiveTest
//
//  Created by Eugen Waldschmidt on 10.10.16.
//  Copyright © 2016 Eugen Waldschmidt. All rights reserved.
//

import Foundation
import UIKit
import ReactiveSwift

class MyTextField: UITextField {
    let resultText = MutableProperty("")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addTarget(self, action: #selector(textDidChange), for: .editingChanged)
    }
    
    dynamic func textDidChange(_ sender: Any) {
        resultText.value = text ?? ""
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class MyTextView: UITextView {
    var resultText: BindingTarget<String> {
        return BindingTarget(lifetime: Lifetime(lifeTimeToken), setter: { [weak self](value) in
            self?.text = value
            })
    }
    
    let lifeTimeToken = Lifetime.Token()
}
