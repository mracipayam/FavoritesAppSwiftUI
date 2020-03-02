//
//  FavoriteModel.swift
//  ListingAppSwiftUI
//
//  Created by Murat Han on 2.03.2020.
//  Copyright © 2020 mracipayam. All rights reserved.
//

import Foundation
import SwiftUI

struct FavoriteModel : Identifiable {
    var id = UUID()
    var title : String
    var element : [FavoriteElements]
    
}

struct FavoriteElements : Identifiable {
    var id = UUID()
    var name : String
    var imagename : String
    var description : String
}

//Bands
let metallica = FavoriteElements(name: "Metallica", imagename: "metallica", description: "I have no idea")
let leylatheband = FavoriteElements(name: "Leyla The Band", imagename: "leyla", description: "yoklugundaaaa")
let pera = FavoriteElements(name: "Pera", imagename: "pera", description: "Unut dibine kadar")

let FavoriteBands = FavoriteModel(title: "Favorite Bands", element:[metallica,leylatheband,pera])
//Movies
let friends = FavoriteElements(name: "Friends", imagename: "friends", description: "Could it BE anymore good")
let sherlock = FavoriteElements(name: "Sherlock Holmes", imagename: "sherlock", description: "My baker street boys")
let prisonbreak = FavoriteElements(name: "Prison Break", imagename: "prison", description: "Come and get it")

let FavoriteMovies = FavoriteModel(title: "Favorite Movies", element:[friends,sherlock,prisonbreak])

let myFavorites = [FavoriteBands,FavoriteMovies]
