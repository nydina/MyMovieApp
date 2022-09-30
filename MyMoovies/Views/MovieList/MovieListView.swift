//
//  MovieList.swift
//  MyMoovies
//
//  Created by Dina Andrianarijaona on 20/09/2022.
//

import SwiftUI

struct MovieListView: View {
    @EnvironmentObject var movies: MovieViewModel
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
                List(searchResults) { movie in
                    MovieRowView(movie: movie)
                }
                .searchable(text: $searchText, placement:  .navigationBarDrawer(displayMode: .always),
                            prompt: "Titre de film")
                .navigationTitle("Movies")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(trailing: AddMovieButtonView())
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

struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView()
    }
}
