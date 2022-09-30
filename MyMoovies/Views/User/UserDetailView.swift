//
//  UserDetail.swift
//  MyMoovies
//
//  Created by Dina Andrianarijaona on 22/09/2022.
//

import SwiftUI

struct UserDetailView: View {
    var body: some View {
        NavigationView {
            VStack{
                UserThumbnailView()
                Text("@" + user.name)
                    .font(.largeTitle)
                Text(user.description)
                List {
                    Section("Genres préférés") {
                        ForEach(user.typeOfMovie, id: \.self){ type in
                            
                                Text(type.rawValue)
                            
                        }
                    }
                    Section("Films préférés") {
                        Text("Film")
                    }
                }
                
                
            }
                .navigationTitle("Profil")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailView()
    }
}
