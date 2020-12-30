//
//  UnidirectionalDataFlowType.swift
//  SwiftUIMVVMUnitDemo
//
//  Created by Knoxpo MacBook Pro on 30/12/20.
//


import Foundation

protocol UnidirectionalDataFlowType {
    associatedtype InputType
    
    func apply(_ input: InputType)
}
