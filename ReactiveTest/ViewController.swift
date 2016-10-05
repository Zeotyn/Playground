//
//  ViewController.swift
//  ReactiveTest
//
//  Created by Eugen Waldschmidt on 04/10/2016.
//  Copyright © 2016 Eugen Waldschmidt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let recipeView = RecipeView(frame: self.view.frame)
        recipeView.baseLabel.text = "Hello"
        recipeView.flavourLabel.text = "World"
        recipeView.computeButton.setTitle("compute", for: .normal)
        recipeView.baseTextField.isHidden = false
        self.view.addSubview(recipeView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

