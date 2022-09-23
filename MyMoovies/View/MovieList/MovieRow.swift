//
//  MovieRow.swift
//  MyMoovies
//
//  Created by Dina Andrianarijaona on 20/09/2022.
//

import SwiftUI

struct MovieRow: View {
    let movie: Movie
    
    var body: some View {
        NavigationLink(destination: MovieDetail(movie: movie)) {
            HStack {
                Image(systemName: "film")
                    .foregroundColor(.red)
                Text(movie.title)
                    .font(.title2)
                    .padding(.leading)
                Text("(" + String(movie.year) + ")")
                .fontWeight(.medium)
            }
            .padding(.vertical)
        }
        
        
    }
    
}

struct MovieRow_Previews: PreviewProvider {
    static var previews: some View {
        MovieRow(movie: .preview)    }
}
