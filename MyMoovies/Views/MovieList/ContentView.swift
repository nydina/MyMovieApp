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
            MovieListView()
                .tabItem {
                    Image(systemName: "film.circle.fill")
                    Text("Film")
                }
            UserDetailView()
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
