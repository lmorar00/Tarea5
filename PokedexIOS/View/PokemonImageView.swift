//
//  PokemonImageView.swift
//  PokedexIOS
//
//  Created by Luis Mora Rivas on 13/9/21.
//

import SwiftUI
import Kingfisher

struct PokemonImageView: View {
    var pokemonImage: KFImage
    
    var body: some View {
        pokemonImage
            .resizable()
            .scaledToFill()
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .background(Circle().foregroundColor(.white))
            .shadow(radius: 5)
    }
}

struct PokemonImageView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonImageView(pokemonImage: KFImage(URL(string: MOCK_POKEMON[0].imageUrl)))
    }
}
