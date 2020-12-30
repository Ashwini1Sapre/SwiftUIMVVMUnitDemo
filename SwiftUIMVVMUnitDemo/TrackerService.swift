//
//  TrackerService.swift
//  SwiftUIMVVMUnitDemo
//
//  Created by Knoxpo MacBook Pro on 30/12/20.
//

import Foundation
enum TrackEventType {
    case listView
    case listview
}

protocol TrackerType {
    func log(type: TrackEventType)
   
}

final class TrackerService: TrackerType {
    
    func log(type: TrackEventType) {
        // do something
    }
    
    
}



