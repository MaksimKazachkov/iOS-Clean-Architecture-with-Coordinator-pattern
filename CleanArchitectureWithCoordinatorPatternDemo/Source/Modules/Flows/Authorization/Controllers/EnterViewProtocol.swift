//
//  EnterViewProtocol.swift
//  CleanArchitectureWithCoordinatorPatternDemo
//
//  Created Maksim Kazachkov on 11.11.2017.
//  Copyright © 2017 Maksim Kazachkov. All rights reserved.
//

import UIKit

protocol EnterViewProtocol: BaseViewProtocol {
    var onCompletion: CompletionBlock? { get set }
}

