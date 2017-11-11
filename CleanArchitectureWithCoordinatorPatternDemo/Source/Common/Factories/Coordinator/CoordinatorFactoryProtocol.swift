//
//  CoordinatorFactoryProtocol.swift
//  Worker Dashy
//
//  Created by Maksim Kazachkov on 16.08.17.
//  Copyright © 2017 Umbrella. All rights reserved.
//

import UIKit

protocol CoordinatorFactoryProtocol {
    func makeOnboardingCoordinator(router: Routable)    -> Coordinatable & OnboardingCoordinatorOutput
    func makeAuthorizationCoordinator(router: Routable) -> Coordinatable & AuthorizationCoordinatorOutput
    func makeMainCoordinator(router: Routable)          -> Coordinatable & MainCoordinatorOutput
}
