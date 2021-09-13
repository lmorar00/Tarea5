//
//  Pokemon.swift
//  PokedexIOS
//
//  Created by Luis Mora Rivas on 13/9/21.
//

import Foundation
import SwiftUI

struct Pokemon: Decodable, Identifiable {
    let id: Int
    let name: String
    let imageUrl: String
    let type: String
    let description: String
    let attack: Int
    let defense: Int
    let height: Int
    let weight: Int
    
}

let MOCK_POKEMON: [Pokemon] = [
    .init(id:0, name: "Bulbasaur", imageUrl: "https://firebasestorage.googleapis.com/v0/b/pokedex-bb36f.appspot.com/o/pokemon_images%2F2CF15848-AAF9-49C0-90E4-28DC78F60A78?alt=media&token=15ecd49b-89ff-46d6-be0f-1812c948e334", type: "poison", description: "Bulbasaur can be seen napping in bright sunlight.\nThere is a seed on its back. By soaking up the sun’s rays,\nthe seed grows progressively larger.", attack: 62, defense: 62, height: 7, weight: 69),
]

let MOCK_POKEMONVIEWMODEL = PokemonViewModel()

// Determina el color del pokemon
func pokemonBackgroundColor(forType type: String) -> UIColor {
    switch type {
    case "fire": return .systemRed
    case "poison": return .systemGreen
    case "water": return .systemTeal
    case "electric": return .systemYellow
    case "psychic": return .systemPurple
    case "normal": return .systemOrange
    case "ground": return .systemGray
    case "flying": return .systemBlue
    case "fairy": return .systemPink
    default: return .systemIndigo
    }
}
