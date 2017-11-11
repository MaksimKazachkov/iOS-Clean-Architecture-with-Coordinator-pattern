//
//  EnterInteractor.swift
//  CleanArchitectureWithCoordinatorPatternDemo
//
//  Created Maksim Kazachkov on 11.11.2017.
//  Copyright © 2017 Maksim Kazachkov. All rights reserved.
//

import UIKit

final class EnterInteractor {

    weak var presenter: EnterPresenter?
    
    func signIn() {
        UserDefaultsWrapper.token = "Some token"
        presenter?.handleSuccessSignIn()
    }
}
