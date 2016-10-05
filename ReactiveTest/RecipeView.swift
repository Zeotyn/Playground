//
//  RecipientView.swift
//  ReactiveTest
//
//  Created by Eugen Waldschmidt on 05/10/2016.
//  Copyright © 2016 Eugen Waldschmidt. All rights reserved.
//

import UIKit
import SnapKit

class RecipeView: UIView {
    let baseLabel = UILabel()
    let flavourLabel = UILabel()
    let baseTextField = UITextField()
    let flavourTextField = UITextField()
    let computeButton = UIButton()

    override init(frame: CGRect) {
        super.init(frame: frame)

        [baseLabel, flavourLabel, baseTextField, flavourTextField, computeButton].forEach { (item) in
            addSubview(item as! UIView)
            if let item = item as? UITextField {
                item.borderStyle = .roundedRect
            }
        }


        baseLabel.snp.makeConstraints { (make) in
            make.top.equalTo(self).offset(20)
            make.left.equalTo(self).offset(20)
        }

        baseTextField.snp.makeConstraints { (make) in
            make.top.equalTo(baseLabel).offset(20)
            make.left.equalTo(baseLabel)
            make.width.equalTo(baseLabel).multipliedBy(5)
        }

        flavourLabel.snp.makeConstraints { (make) in
            make.top.equalTo(baseTextField).offset(50)
            make.left.equalTo(baseTextField)
        }

        flavourTextField.snp.makeConstraints { (make) in
            make.top.equalTo(flavourLabel).offset(20)
            make.left.equalTo(flavourLabel)
            make.width.equalTo(baseTextField)
        }

        computeButton.snp.makeConstraints { (make) in
            make.top.equalTo(flavourTextField).offset(50)
            make.left.equalTo(flavourTextField)
            make.width.equalTo(flavourTextField).dividedBy(2)
        }

        computeButton.backgroundColor = .black
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}