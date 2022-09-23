//
//  UserThumbnail.swift
//  MyMoovies
//
//  Created by Dina Andrianarijaona on 22/09/2022.
//

import SwiftUI

struct UserThumbnail: View {
    var body: some View {
        Image("helen")
           
            .resizable()
            .scaledToFill()
            .frame(width: 200, height: 200)
            .border(.red, width: 8)
            .cornerRadius(100)
            
            
            
            .shadow(radius: 250)
    }
}

struct UserThumbnail_Previews: PreviewProvider {
    static var previews: some View {
        UserThumbnail()
    }
}
