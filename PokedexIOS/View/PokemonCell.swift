//
//  PokemonCell.swift
//  PokedexIOS
//
//  Created by Luis Mora Rivas on 13/9/21.
//

import SwiftUI
import Kingfisher

struct PokemonCell: View {
    // Variables o Constantes
    let pokemon: Pokemon
    let pokemonViewModel: PokemonViewModel
    let pokemonBackgroundColor: Color
    
    init(pokemon: Pokemon, pokemonViewModel: PokemonViewModel) {
        self.pokemon = pokemon
        self.pokemonViewModel = pokemonViewModel
        self.pokemonBackgroundColor = Color(pokemonViewModel.pokemonBackgroundColor(forType: pokemon.type))
    }
    
    var body: some View {
        HStack{
            VStack (alignment: .leading, spacing: 5){
                Text(pokemon.name.capitalized)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top, 4)
                    .padding(.leading)
                
                HStack {
                    Text(pokemon.type)
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .padding(.horizontal, 16)
                        .padding(.vertical, 8)
                        .overlay(RoundedRectangle(cornerRadius: 20).fill(Color.white.opacity(0.25)))
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 24, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                    
                    Text(pokemon.description)
                        .font(.caption)
                        .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                    
                    KFImage(URL(string: pokemon.imageUrl))
                        .resizable()
                        .scaledToFit()
                        .frame(width: 68, height: 68)
                        .padding([.bottom, .trailing], 4)

                }
            }
        }
        .background(pokemonBackgroundColor)
        .cornerRadius(12)
        .shadow(color: pokemonBackgroundColor,radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 0.0, y: 0.0)
    }
}


struct PokemonCell_Previews: PreviewProvider {
    
    static var previews: some View {
        PokemonCell(pokemon: MOCK_POKEMON[0],pokemonViewModel:MOCK_POKEMONVIEWMODEL)
    }
}
