//
//  AddToFavorite.swift
//  MyMoovies
//
//  Created by Dina Andrianarijaona on 21/09/2022.
//

import SwiftUI

struct AddToFavorite: View {
    @State private var isFavorite: Bool = false
    var body: some View {
        Button {
            isFavorite.toggle()
        } label: {
            Image(systemName: isFavorite ? "heart.fill" : "heart")
                .font(.title)
        }
        
       
        
    }
}


struct AddToFavorite_Previews: PreviewProvider {
    static var previews: some View {
        AddToFavorite()
    }
}
