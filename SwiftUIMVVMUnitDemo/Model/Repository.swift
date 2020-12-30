//
//  Repository.swift
//  SwiftUIMVVMUnitDemo
//
//  Created by Knoxpo MacBook Pro on 30/12/20.
//

import Foundation
import SwiftUI

struct  Repository: Decodable, Hashable,Identifiable{
    var id :Int64
    var fullName: String
    var description: String
    var stargazersCount: Int = 0
    var language: String?
    var owner: User
}
