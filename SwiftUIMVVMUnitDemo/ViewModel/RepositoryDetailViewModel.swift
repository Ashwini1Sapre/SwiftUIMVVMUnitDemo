//
//  RepositoryDetailViewModel.swift
//  SwiftUIMVVMUnitDemo
//
//  Created by Knoxpo MacBook Pro on 30/12/20.
//

import Foundation

import SwiftUI
import Combine

final class RepositoryDetailViewModel: ObservableObject {
    let objectWillChange: AnyPublisher<RepositoryListViewModel, Never>
    let objectWillChangeSubject = PassthroughSubject<RepositoryListViewModel, Never>()
    
    let repository: Repository
    
    init(repository: Repository) {
        objectWillChange = objectWillChangeSubject.eraseToAnyPublisher()
        self.repository = repository
    }
}
