//
//  AddMovieButton.swift
//  MyMoovies
//
//  Created by Dina Andrianarijaona on 21/09/2022.
//

import SwiftUI

struct AddMovieButton: View {
    @State private var showingAddMovie = false
    @Binding var updatedMovies: [Movie]
    var body: some View {
        Button {
            showingAddMovie = true
        } label: {
            Image(systemName: "plus.circle.fill")
        }
        .sheet(isPresented: $showingAddMovie) {
            AddMovieForm(updatedMovies: $updatedMovies)
        }
        
    }
}

struct AddMovieButton_Previews: PreviewProvider {
    static var previews: some View {
        AddMovieButton(updatedMovies: .constant([.preview]))
    }
}
