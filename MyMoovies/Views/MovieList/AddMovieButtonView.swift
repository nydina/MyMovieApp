//
//  AddMovieButton.swift
//  MyMoovies
//
//  Created by Dina Andrianarijaona on 21/09/2022.
//

import SwiftUI

struct AddMovieButtonView: View {
    @EnvironmentObject var movies: MovieViewModel
    @State private var showingAddMovie = false

    var body: some View {
        Button {
            showingAddMovie = true
        } label: {
            Image(systemName: "plus.circle.fill")
        }
        .sheet(isPresented: $showingAddMovie) {
            AddMovieFormView()
        }
        
    }
}

struct AddMovieButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddMovieButtonView()
    }
}
