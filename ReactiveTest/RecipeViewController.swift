//
//  ViewController.swift
//  ReactiveTest
//
//  Created by Eugen Waldschmidt on 04/10/2016.
//  Copyright © 2016 Eugen Waldschmidt. All rights reserved.
//

import UIKit
import ReactiveSwift

class RecipeViewController: UIViewController {
    
    fileprivate var recipeViewModel: RecipeViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let recipeView = RecipeView(frame: self.view.frame)
        self.view.addSubview(recipeView)
        
        recipeViewModel!.base <~ recipeView.baseTextField.resultText.map({ value in
            Float(value) ?? 0
        })
        
        recipeViewModel!.flavour <~ recipeView.flavourTextField.resultText.map({ value in
            Float(value) ?? 0
        })
        
        recipeView.results.resultText <~ recipeViewModel!.result
    }
    
    init(with viewModel: RecipeViewModel) {
        self.recipeViewModel = viewModel
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

