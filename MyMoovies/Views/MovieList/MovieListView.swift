//
//  MovieList.swift
//  MyMoovies
//
//  Created by Dina Andrianarijaona on 20/09/2022.
//

import SwiftUI

struct MovieListView: View {
    @EnvironmentObject var movies: MovieViewModel
    
    var body: some View {
        NavigationView {
            List(movies.searchResults) { movie in
                    MovieRowView(movie: movie)
                }
                .searchable(text: $movies.searchText, placement:  .navigationBarDrawer(displayMode: .always),
                            prompt: "Titre de film")
                .navigationTitle("Movies")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(trailing: AddMovieButtonView())
            }
    }
    
}

struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView()
    }
}
