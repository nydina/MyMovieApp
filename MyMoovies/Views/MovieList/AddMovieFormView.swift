//
//  AddNewMovie.swift
//  MyMoovies
//
//  Created by Dina Andrianarijaona on 21/09/2022.
//

import SwiftUI

struct AddMovieFormView: View {
    @EnvironmentObject var viewModel: MovieViewModel
    @Environment(\.presentationMode) var presentationMode

    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section("Caracteristiques") {
                        TextField("Titre du film", text: $viewModel.title)
                        TextField("Réalisateur", text: $viewModel.director)
                        TextField("Année de sortie", text: $viewModel.year)
                    }
                    
                    Section("Synopsis") {
                        TextField("Pitch", text: $viewModel.description)
                            .frame(height: 150, alignment: .top)
                        
                    }
                    
                    Section("Genre") {
                        Picker("Genre", selection: $viewModel.selectedType) {
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
                    viewModel.addMovie()
                    presentationMode.wrappedValue.dismiss()
                }
            }
        }
    }
    
}


struct AddMovieFormView_Previews: PreviewProvider {
    static var previews: some View {
        AddMovieFormView()
    }
}



