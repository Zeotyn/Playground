//
//  RecipeViewModel.swift
//  ReactiveTest
//
//  Created by Eugen Waldschmidt on 07.10.16.
//  Copyright © 2016 Eugen Waldschmidt. All rights reserved.
//

import Foundation
import ReactiveSwift

class RecipeViewModel {
    var base = MutableProperty<Float>(0.0)
    var flavour = MutableProperty<Float>(0.0)
    
    var result = MutableProperty<String>("")
    
    init() {
        
        result <~ base.producer.combineLatest(with: flavour.producer).map { (base, flavour) in
            return "\(base + flavour)"
        }
    }
}
