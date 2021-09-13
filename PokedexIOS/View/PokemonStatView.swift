//
//  PokemonStatView.swift
//  PokedexIOS
//
//  Created by Luis Mora Rivas on 13/9/21.
//

import SwiftUI

struct PokemonStatView: View {
    // Variables o constantes
    var pokemon: Pokemon
    var pokeStatName: String
    var pokeStatColor: Color
    var pokeStatValue: Int
    
    var body: some View {
        HStack {
            Text(pokeStatName)
                .font(.system(.body, design: .monospaced))
            
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(.gray)
                    .frame(width: 150, height: 20)
                
                RoundedRectangle(cornerRadius: 5)
                    .foregroundColor(pokeStatColor)
                    .frame(width: pokeStatValue <= 100 ? 150 * (CGFloat(pokeStatValue) / 100) : 150, height: 20)
            }
            Text("\(pokeStatValue)")
                .font(.system(.body, design: .monospaced))
        }
    }
}

struct PokemonStatView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonStatView(pokemon: MOCK_POKEMON[0], pokeStatName: "Atk", pokeStatColor: .blue, pokeStatValue: 55)
    }
}
