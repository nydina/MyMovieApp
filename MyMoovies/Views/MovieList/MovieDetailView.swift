//
//  MovieDetail.swift
//  MyMoovies
//
//  Created by Dina Andrianarijaona on 20/09/2022.
//

import SwiftUI

struct MovieDetailView: View {
    let movie: Movie
    var body: some View {
            VStack {
                Text(movie.title)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                Text("by \(movie.director)")
                    .font(.title3)
                    .fontWeight(.semibold)
                Text(String(movie.year))
                    .italic()
                Image(movie.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit
                    )
                    .cornerRadius(30)
                    .padding()
                Text(movie.type.rawValue)
                    .italic()
                ScrollView(showsIndicators: false) {

                Text(movie.description)
                .font(.body)
                .multilineTextAlignment(.center)
                .padding()
                Spacer()
            }
                .navigationBarItems(trailing: AddToFavoriteView())
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MovieDetailView(movie: .preview)
                .previewInterfaceOrientation(.portraitUpsideDown)
        }
    }
}
