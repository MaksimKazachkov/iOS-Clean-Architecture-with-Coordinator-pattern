//
//  MainCoordinatorOutput.swift
//  CleanArchitectureWithCoordinatorPatternDemo
//
//  Created by Maksim Kazachkov on 11.11.2017.
//  Copyright © 2017 Maksim Kazachkov. All rights reserved.
//

import Foundation

protocol MainCoordinatorOutput: class {
    var finishFlow: CompletionBlock? { get set }
}
