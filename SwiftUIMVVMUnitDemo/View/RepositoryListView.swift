//
//  RepositoryListView.swift
//  SwiftUIMVVMUnitDemo
//
//  Created by Knoxpo MacBook Pro on 30/12/20.
//

import SwiftUI

struct RepositoryListView: View {
    
    
    @ObservedObject var vieewModel: RepositoryListViewModel
    var body: some View {
        NavigationView{
            List(vieewModel.repositories){
                
                repository in
                    RepositoryListRow(repository: repository)
                
            }
            .alert(isPresented: $vieewModel.isErrorShown, content: { () -> Alert in
                Alert(title: Text("Error"), message: Text(vieewModel.errorMessage))
            })
            .navigationBarTitle(Text("demo"))
            
            
            
        }
        .onAppear(perform: {
            self.vieewModel.apply(.onAppear)
            
        })
    }
}

struct RepositoryListView_Previews: PreviewProvider {
    static var previews: some View {
        RepositoryListView(vieewModel: .init())
    }
}
