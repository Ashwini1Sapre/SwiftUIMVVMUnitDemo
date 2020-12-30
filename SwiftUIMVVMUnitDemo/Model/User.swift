//
//  User.swift
//  SwiftUIMVVMUnitDemo
//
//  Created by Knoxpo MacBook Pro on 30/12/20.
//


import Foundation
import SwiftUI

struct User: Decodable, Hashable, Identifiable {
    var id: Int64
    var login: String
    var avatarUrl: URL
}
