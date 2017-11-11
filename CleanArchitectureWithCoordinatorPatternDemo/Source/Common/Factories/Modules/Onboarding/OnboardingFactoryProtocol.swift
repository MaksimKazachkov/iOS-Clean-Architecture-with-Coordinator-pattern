//
//  OnboardingFactoryProtocol.swift
//  CleanArchitectureWithCoordinatorPatternDemo
//
//  Created by Maksim Kazachkov on 06.11.2017.
//  Copyright © 2017 Maksim Kazachkov. All rights reserved.
//

import Foundation

protocol OnboardingFactoryProtocol {
    func makeOnboardingView() -> OnboardingViewProtocol
}
