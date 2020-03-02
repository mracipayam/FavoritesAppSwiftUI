//
//  ContentView.swift
//  ListingAppSwiftUI
//
//  Created by Murat Han on 2.03.2020.
//  Copyright © 2020 mracipayam. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach (myFavorites) { favorite in
                    Section(header : Text(favorite.title)){
                        ForEach(favorite.element) { element in
                            NavigationLink(destination: DetailsView(ChosenFavoriteElement: element)) {
                                Text(element.name)
                            }
                            
                            
                        }
                    }
                }
            }.navigationBarTitle(Text("Favorites"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
