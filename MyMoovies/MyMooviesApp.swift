//
//  MyMooviesApp.swift
//  MyMoovies
//
//  Created by Dina Andrianarijaona on 20/09/2022.
//

import SwiftUI

@main
struct MyMooviesApp: App {
    @StateObject var movies = MovieViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(movies)
        }
    }
}
