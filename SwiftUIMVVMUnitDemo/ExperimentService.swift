//
//  ExperimentService.swift
//  SwiftUIMVVMUnitDemo
//
//  Created by Knoxpo MacBook Pro on 30/12/20.
//

import Foundation

enum ExperimentKey: String {
    case showIcon
}

protocol ExperimentServiceType {
    func experiment(for key: ExperimentKey) -> Bool
}

final class ExperimentService: ExperimentServiceType {
    func experiment(for key: ExperimentKey) -> Bool {
        // call api to get variant for the key
        return true
    }
}

