//
//  MockTrackerService.swift
//  SwiftUIMVVMUnitDemoTests
//
//  Created by Knoxpo MacBook Pro on 30/12/20.
//

import Foundation
@testable import SwiftUIMVVMUnitDemo


final class MockTrackerService: TrackerType
{
    private (set) var loggedType: [TrackEventType] = []
    
    func log(type: TrackEventType) {
        loggedType.append(type)
    }
    
    
   
    
    
    
    
    
}



