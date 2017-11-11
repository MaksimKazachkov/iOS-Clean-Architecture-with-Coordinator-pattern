//
//  EnterViewController.swift
//  CleanArchitectureWithCoordinatorPatternDemo
//
//  Created Maksim Kazachkov on 11.11.2017.
//  Copyright © 2017 Maksim Kazachkov. All rights reserved.
//

import UIKit

class EnterViewController: UIViewController, EnterAssemblable {

	var presenter: EnterPresenterInput?
    
    var onCompletion: CompletionBlock?

	override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func signInPressed(_ sender: UIButton) {
        presenter?.onSignIn()
    }
}

// MARK:- EnterPresenterOutput
extension EnterViewController {
    func signInProceed() {
        onCompletion?()
    }
}
