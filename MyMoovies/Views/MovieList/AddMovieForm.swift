//
//  AddNewMovie.swift
//  MyMoovies
//
//  Created by Dina Andrianarijaona on 21/09/2022.
//

import SwiftUI

struct AddMovieForm: View {
    @EnvironmentObject var movies: MovieViewModel
    @Environment(\.presentationMode) var presentationMode
    
    @State private var title: String = ""
    @State private var director: String = ""
    @State private var year: String = ""
    @State private var description: String = ""
    @State var selectedType: MovieType = .Action
    @State var isFavorite: Bool = false
    
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section("Caracteristiques") {
                        TextField("Titre du film", text: $title)
                        TextField("Réalisateur", text: $director)
                        TextField("Année de sortie", text: $year)
                    }
                    
                    Section("Synopsis") {
                        TextField("Pitch", text: $description)
                            .frame(height: 150, alignment: .top)
                        
                    }
                    
                    Section("Genre") {
                        Picker("Genre", selection: $selectedType) {
                            ForEach(MovieType.allCases, id: \.self) {
                                Text($0.rawValue)
                            }
                            
                        }
                        .pickerStyle(.menu)
                    }

                }
                .navigationTitle("Ajouter un film")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Fermer") {
                            presentationMode.wrappedValue.dismiss()
                        }
                    }
                }
                Button("Sauvegarder") {
                    movies.movies.append(Movie(title: title, year: Int(year) ?? 0, imageName: "Infiltres", description: description, director: director, type: selectedType, isFavorite: isFavorite))
                    presentationMode.wrappedValue.dismiss()
                }
            }
        }
    }
    
}


struct AddMovie_Previews: PreviewProvider {
    static var previews: some View {
        AddMovieForm()
    }
}



