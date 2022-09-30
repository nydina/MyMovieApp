//
//  UserThumbnail.swift
//  MyMoovies
//
//  Created by Dina Andrianarijaona on 22/09/2022.
//

import SwiftUI

struct UserThumbnailView: View {
    var body: some View {
        Image("helen")
            .resizable()
            .scaledToFill()
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            
            
            
            .shadow(radius: 250)
    }
}

struct UserThumbnailView_Previews: PreviewProvider {
    static var previews: some View {
        UserThumbnailView()
    }
}
