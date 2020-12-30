//
//  RepositoryListRow.swift
//  SwiftUIMVVMUnitDemo
//
//  Created by Knoxpo MacBook Pro on 30/12/20.
//

import SwiftUI

struct RepositoryListRow: View {
    
    @State var repository: Repository
    var body: some View {
        NavigationLink(destination: RepositoryDetailView(viewModel: .init(repository: repository))) {
            Text(repository.fullName)
        }
    }
}

struct RepositoryListRow_Previews: PreviewProvider {
    static var previews: some View {
        RepositoryListRow(repository: Repository(
            id: 1,
            fullName: "foo", description: "sds",
            owner: User(id: 1, login: "bar", avatarUrl: URL(string: "baz")!)
        )
    )
}
}
