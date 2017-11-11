//
//  EnterPresenter.swift
//  CleanArchitectureWithCoordinatorPatternDemo
//
//  Created Maksim Kazachkov on 11.11.2017.
//  Copyright © 2017 Maksim Kazachkov. All rights reserved.
//

import UIKit

protocol EnterPresenterInput: class {
    func onSignIn()
}

protocol EnterPresenterOutput: class {
    var presenter: EnterPresenterInput? { get set }
    
    func signInProceed()
}

final class EnterPresenter {

    weak var output: EnterPresenterOutput?
    
    var interactor: EnterInteractor?
    
    func handleSuccessSignIn() {
        output?.signInProceed()
    }
}

// MARK:- EnterPresenterInput
extension EnterPresenter: EnterPresenterInput {
    func onSignIn() {
        interactor?.signIn()
    }
}
