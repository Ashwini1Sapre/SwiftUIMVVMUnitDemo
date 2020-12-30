//
//  RepositoryListViewModelTests.swift
//  SwiftUIMVVMUnitDemoTests
//
//  Created by Knoxpo MacBook Pro on 30/12/20.
//

import XCTest
import Combine
@testable import SwiftUIMVVMUnitDemo
class RepositoryListViewModelTests: XCTestCase {

   
    
    
    
   
    func test_updateRepositoriesWhenOnAppear() {
        let apiService = MockAPIService()
        apiService.stub(for: SearchRepositoryRequest.self) { _ in
            Result.Publisher(
                SearchRepositoryResponse(
                                    items: [
                                        .init(
                                            id: 1,
                                            fullName: "foo", description: "asasa",
                                            owner: .init(id: 1, login: "bar", avatarUrl: URL(string: "http://baz.com")!)
                                        )
                                    ]
                                )
            ).eraseToAnyPublisher()
            
            
          
            
            
        }
        let viewModel = makeViewModel(apiService: apiService)
        viewModel.apply(.onAppear)
        XCTAssertTrue(!viewModel.repositories.isEmpty)
        
        
      
    }
    
    func test_serviceErrorWhenOnAppear() {
        let apiService = MockAPIService()
        apiService.stub(for: SearchRepositoryRequest.self) { _ in
            Result.Publisher(
                APISErviceError.responseError
            ).eraseToAnyPublisher()
        }
        let viewModel = makeViewModel(apiService: apiService)
        viewModel.apply(.onAppear)
        XCTAssertTrue(viewModel.isErrorShown)
        
       
        
        
        
         
        
    }
    
    
    
    
    
    
 
    
    
    
    
    func test_logListViewWhenOnAppear() {
        let trackerService = MockTrackerService()
        let viewModel = makeViewModel(trackerService: trackerService)
        
        viewModel.apply(.onAppear)
        XCTAssertTrue(trackerService.loggedType.contains(.listView))
        
        
   
       
        
        
        
    }
    
    
    
    
    
    
    func test_showIconEnabledWhenOnAppear() {
        let experimentService = MockExperimentService()
        experimentService.stub[.showIcon] = true
        let viewModel = makeViewModel(experimentService: experimentService)

 
        
        viewModel.apply(.onAppear)
        XCTAssertTrue(viewModel.shouldShowIcon)
        
        
       
        
        
        
    }
    
  
    
    
    
    func test_showIconDisabledWhenOnAppear() {
        let experimentService = MockExperimentService()
        experimentService.stub[.showIcon] = false
        let viewModel = makeViewModel(experimentService: experimentService)
        
        viewModel.apply(.onAppear)
        XCTAssertFalse(viewModel.shouldShowIcon)
        
        
       
        
    }
    
   
    
    
    
    
    private func makeViewModel(
        apiService: APIServiceType = MockAPIService(),
        trackerService: TrackerType = MockTrackerService(),
        experimentService: ExperimentServiceType = MockExperimentService()
        ) -> RepositoryListViewModel {
        return RepositoryListViewModel(
            apiService: apiService,
            trackerService: trackerService,
            experimentService: experimentService
        )
    }
    
   
    
   
    
    

    
    
    

}
