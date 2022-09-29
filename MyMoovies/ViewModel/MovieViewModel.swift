//
//  MovieViewModel.swift
//  MyMoovies
//
//  Created by Dina Andrianarijaona on 29/09/2022.
//

import Foundation
import SwiftUI

class MovieViewModel: ObservableObject {
    @Published var movie: Movie
    
    internal init(movie: Movie) {
        self.movie = movie
    }
    
    
    
    func saveMovie() {
        //        updatedMovies.append(Movie(title: title, year: Int(year) ?? 0, imageName: "Infiltres", description: description, director: director, type: selectedType, isFavorite: isFavorite))
    }
    
}
