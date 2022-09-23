//
//  ContentView.swift
//  MyMoovies
//
//  Created by Dina Andrianarijaona on 20/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MovieList()
                .tabItem {
                    Image(systemName: "film.circle.fill")
                    Text("Film")
                }
            Text("Another Tab")
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("Profil")
                }

        }
        .accentColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
