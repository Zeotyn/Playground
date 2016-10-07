//
//  RecipeModel.swift
//  ReactiveTest
//
//  Created by Eugen Waldschmidt on 06/10/2016.
//  Copyright © 2016 Eugen Waldschmidt. All rights reserved.
//

import Foundation

class RecipeModel {
    var flavour: Float
    var base: Float
    var flavourResult:Float
    var baseResult:Float
    
    

    init(flavour : Float, base: Float, flavourResult: Float, baseResult: Float) {
        self.flavour = flavour
        self.base = base
        self.flavourResult = flavourResult
        self.baseResult = baseResult
    }

}
