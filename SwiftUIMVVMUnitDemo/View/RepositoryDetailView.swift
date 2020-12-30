//
//  RepositoryDetailView.swift
//  SwiftUIMVVMUnitDemo
//
//  Created by Knoxpo MacBook Pro on 30/12/20.
//

import SwiftUI

struct RepositoryDetailView: View {
    @ObservedObject var viewModel: RepositoryDetailViewModel
    var body: some View {
        Text(viewModel.repository.fullName)
    }
}

struct RepositoryDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RepositoryDetailView(viewModel: .init(
            repository: Repository(id: 1, fullName: "foo", description: "hgg", owner:
                User(id: 1, login: "bar", avatarUrl: URL(string: "http://baz.com")!))
            )
        )
    }
}
