//
//  APIServiceError.swift
//  SwiftUIMVVMUnitDemo
//
//  Created by Knoxpo MacBook Pro on 30/12/20.
//

import Foundation

enum APISErviceError: Error{
    case responseError
    case parseError(Error)
    
    
   
    
}
