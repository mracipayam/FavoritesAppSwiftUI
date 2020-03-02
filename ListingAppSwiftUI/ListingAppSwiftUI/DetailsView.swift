 //
//  DetailsView.swift
//  ListingAppSwiftUI
//
//  Created by Murat Han on 2.03.2020.
//  Copyright © 2020 mracipayam. All rights reserved.
//

import SwiftUI

struct DetailsView: View {
    var ChosenFavoriteElement : FavoriteElements
    var body: some View {
        VStack{
            Image(ChosenFavoriteElement.imagename)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(ChosenFavoriteElement.name)
                .font(.largeTitle)
                .padding()
            Text(ChosenFavoriteElement.description)
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(ChosenFavoriteElement: friends)
    }
}
