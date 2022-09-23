//
//  SearchForMovie.swift
//  MyMoovies
//
//  Created by Dina Andrianarijaona on 22/09/2022.
//

import SwiftUI

struct SearchForMovie: View {
    @State private var searchText = ""

        var body: some View {
            NavigationView {
                Text("Searching for \(searchText)")
                    .searchable(text: $searchText, prompt: "Look for something")
                    .navigationTitle("Searchable Example")
            }
        }
}

struct SearchForMovie_Previews: PreviewProvider {
    static var previews: some View {
        SearchForMovie()
    }
}
