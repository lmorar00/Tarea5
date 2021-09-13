//
//  PokemonDetailView.swift
//  PokedexIOS
//
//  Created by Luis Mora Rivas on 13/9/21.
//

import SwiftUI
import Kingfisher

struct PokemonDetailView: View {
    var pokemon: Pokemon
    @State private var scale: CFloat = 0
    var body: some View {
        GeometryReader { geo in
            VStack {
                Text(pokemon.name.capitalized)
                    .font(.largeTitle)
                
                Text(pokemon.type.capitalized)
                    .italic()
                    .foregroundColor(Color(pokemonBackgroundColor(forType: pokemon.type)))
                PokemonImageView(pokemonImage: KFImage(URL(string: pokemon.imageUrl)))
                    .padding(.bottom, -100)
                    .zIndex(1)
                
                ZStack {
                    Rectangle()
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        .frame(width: geo.size.width, height: geo.size.height)
                        .foregroundColor(Color(pokemonBackgroundColor(forType: pokemon.type)))
                        .padding(.bottom, -150)
                    
                    VStack {
                        Text(pokemon.description.replacingOccurrences(of: "\n", with: ""))
                            .foregroundColor(.white)
                            .padding()
                        
                        PokemonStatsViewGroup(pokemon: pokemon)
                            
                    }
                    
                }
            }
            
        }
    }
}

struct PokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonDetailView(pokemon: MOCK_POKEMON[0])
    }
}
