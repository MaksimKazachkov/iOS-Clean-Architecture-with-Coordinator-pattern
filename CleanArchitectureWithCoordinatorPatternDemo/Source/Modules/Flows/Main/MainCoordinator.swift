//
//  MainCoordinator.swift
//  CleanArchitectureWithCoordinatorPatternDemo
//
//  Created by Maksim Kazachkov on 11.11.2017.
//  Copyright © 2017 Maksim Kazachkov. All rights reserved.
//

import Foundation

final class MainCoordinator: BaseCoordinator, MainCoordinatorOutput {
    
    var finishFlow: CompletionBlock?
    
    fileprivate let factory: MainFactoryProtocol
    fileprivate let router : Routable
    
    init(with factory: MainFactoryProtocol, router: Routable) {
        self.factory = factory
        self.router  = router
    }
}

// MARK:- Coordinatable
extension MainCoordinator: Coordinatable {
    func start() {
        performFlow()
    }
}

// MARK:- Private methods
private extension MainCoordinator {
    func performFlow() {
        let view = factory.makeCharatersView()
        router.setRootModule(view, hideBar: true)
    }
}
