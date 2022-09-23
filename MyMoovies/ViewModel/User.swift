//
//  User.swift
//  MyMoovies
//
//  Created by Dina Andrianarijaona on 22/09/2022.
//

import Foundation
struct User {
    let name: String
    let dateOfBirth: String //à mettre en type Date
    let description: String
    let typeOfMovie: [MovieType]
//    var favoriteMovie: [Movie]
}

let user = User(name: "Helen", dateOfBirth: "22/02/1996", description: "Hello, I am a movie fan, and most of all I LOVE Leornado DiCaprio ❤", typeOfMovie: [.Drame, .Action])
