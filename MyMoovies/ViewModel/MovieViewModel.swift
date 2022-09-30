//
//  MovieViewModel.swift
//  MyMoovies
//
//  Created by Dina Andrianarijaona on 29/09/2022.
//

import Foundation
import SwiftUI

class MovieViewModel: ObservableObject {
    @Published var movies: [Movie]
    
    init() {
            self.movies = [
                Movie(title: "Les Infiltrés", year: 2006, imageName: "Infiltres", description: "À Boston, une lutte sans merci oppose la police à la mafia irlandaise dirigée par Frank Costello, parrain des quartiers sud. Ce dernier va racketter une épicerie et repère un enfant, Colin Sullivan. Il lui fait comprendre comment le monde marche.", director: "Martin Scorcèse", type: .Action, isFavorite: true),
                Movie(title: "Inception", year: 2010, imageName: "Inception", description: "South Boston cop Billy Costigan (Leonardo DiCaprio) goes under cover to infiltrate the organization of gangland chief Frank Costello (Jack Nicholson). As Billy gains the mobster's trust, a career criminal named Colin Sullivan (Matt Damon) infiltrates the police department and reports on its activities to his syndicate bosses. When both organizations learn they have a mole in their midst, Billy and Colin must figure out each other's identities to save their own lives.", director: "Christopher Nolan", type: .Action, isFavorite: true),
                Movie(title: "The Revenant", year: 2015, imageName: "Revenant", description: "Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.", director: "Alejandro G. Iñárritu", type: .Drame, isFavorite: true)
            ]
        }
}
