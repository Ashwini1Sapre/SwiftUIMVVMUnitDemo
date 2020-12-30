//
//  MockAPIService.swift
//  SwiftUIMVVMUnitDemoTests
//
//  Created by Knoxpo MacBook Pro on 30/12/20.
//

import Foundation
import Combine
@testable import SwiftUIMVVMUnitDemo

final class MockAPIService: APIServiceType
{
    var stub: [Any] = []
    
    func stub<Request>(for type: Request.Type, response:@escaping ((Request) -> AnyPublisher<Request.Response, APISErviceError>)) where Request : APIRequestType {
        stub.append(response)
    }
    
    
    
    
    
    func response<Request>(from request: Request) -> AnyPublisher<Request.Response, APISErviceError> where Request : APIRequestType {
        let response = stub.compactMap { stub -> AnyPublisher<Request.Response,APISErviceError>? in
            
            let stub = stub as? ((Request) -> AnyPublisher<Request.Response, APISErviceError>)
            return stub?(request)
        }.last
        
        return response ?? Empty<Request.Response, APISErviceError>()
            .eraseToAnyPublisher()
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
   
    
}
