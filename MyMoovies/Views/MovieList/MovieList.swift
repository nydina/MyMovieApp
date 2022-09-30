//
//  MovieList.swift
//  MyMoovies
//
//  Created by Dina Andrianarijaona on 20/09/2022.
//

import SwiftUI

struct MovieList: View {
    @EnvironmentObject var movies: MovieViewModel
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
                List(searchResults) { movie in
                    MovieRow(movie: movie)
                }
                .searchable(text: $searchText, placement:  .navigationBarDrawer(displayMode: .always),
                            prompt: "Titre de film")
                .navigationTitle("Movies")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(trailing: AddMovieButton())
            }
    }
    
    var searchResults: [Movie] {
        if searchText.isEmpty {
            return movies.movies
        } else {
            return movies.movies.filter { $0.title.localizedCaseInsensitiveContains(searchText) }
        }
    }
}

struct MovieList_Previews: PreviewProvider {
    static var previews: some View {
        MovieList()
    }
}
