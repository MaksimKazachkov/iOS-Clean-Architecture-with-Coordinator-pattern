//
//  AuthorizationFactory.swift
//  Worker Dashy
//
//  Created by Maksim Kazachkov on 17.08.17.
//  Copyright © 2017 Umbrella. All rights reserved.
//

import Foundation

protocol AuthorizationFactoryProtocol {
    func makeEnterView() -> EnterViewProtocol
}
