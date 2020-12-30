//
//  MockExperimentService.swift
//  SwiftUIMVVMUnitDemoTests
//
//  Created by Knoxpo MacBook Pro on 30/12/20.
//

import Foundation
@testable import SwiftUIMVVMUnitDemo

final class MockExperimentService: ExperimentServiceType{
    
    var stub: [ExperimentKey: Bool] = [:]
    func experiment(for key: ExperimentKey) -> Bool {
      return  stub[key] ?? false
    }
    
    func experiment(for key: ExperimentKey, value : Bool)
    {
        
        stub[key] = value
        
    }
    
    
    
}
