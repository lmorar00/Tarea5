//
//  PokemonStatsViewGroup.swift
//  PokedexIOS
//
//  Created by Luis Mora Rivas on 13/9/21.
//

import SwiftUI

struct PokemonStatsViewGroup: View {
    var pokemon: Pokemon
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 300, height: 250)
                .foregroundColor(.white)
                .opacity(0.6)
                .cornerRadius(20)
            
            VStack (alignment: .leading, spacing: 30) {
                PokemonStatView(pokemon: pokemon, pokeStatName: "Atk", pokeStatColor: .blue, pokeStatValue: pokemon.attack)
                PokemonStatView(pokemon: pokemon, pokeStatName: "Def", pokeStatColor: .red, pokeStatValue: pokemon.defense)
                PokemonStatView(pokemon: pokemon, pokeStatName: "Hgt", pokeStatColor: .purple, pokeStatValue: pokemon.height)
                PokemonStatView(pokemon: pokemon, pokeStatName: "Wgt", pokeStatColor: .orange, pokeStatValue: pokemon.weight)
                
            }
        }
    }
}

struct PokemonStatsViewGroup_Previews: PreviewProvider {
    static var previews: some View {
        PokemonStatsViewGroup(pokemon: MOCK_POKEMON[0])
    }
}
