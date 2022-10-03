//
//  AddToFavorite.swift
//  MyMoovies
//
//  Created by Dina Andrianarijaona on 21/09/2022.
//

import SwiftUI

struct AddToFavoriteView: View {
    @StateObject var viewModel: MovieViewModel
    var body: some View {
        Button {
            viewModel.isFavorite.toggle()
        } label: {
            Image(systemName: viewModel.isFavorite ? "heart.fill" : "heart")
                .font(.title)
        }
    }
}

