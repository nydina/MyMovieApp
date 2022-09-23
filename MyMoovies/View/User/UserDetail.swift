//
//  UserDetail.swift
//  MyMoovies
//
//  Created by Dina Andrianarijaona on 22/09/2022.
//

import SwiftUI

struct UserDetail: View {
    var body: some View {
        NavigationView {
            VStack{
                UserThumbnail()
                Text("@" + user.name)
                    .font(.largeTitle)
                Text(user.description)
                List {
                    Section("Genres préférés") {
                        ForEach(user.typeOfMovie, id: \.self){ type in
                            
                                Text(type.rawValue)
                            
                        }
                    }
                    
                }
                
                
            }
                .navigationTitle("Profil")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct UserDetail_Previews: PreviewProvider {
    static var previews: some View {
        UserDetail()
    }
}
