//
//  PokedexView.swift
//  PokedexIOS
//
//  Created by Luis Mora Rivas on 13/9/21.
//

import SwiftUI
import Kingfisher

struct PokedexView: View {
    //Variables or Constants
    private let gridItems = [GridItem(.flexible()),GridItem(.flexible())]
    
    //Observed Variables
    @ObservedObject var pokemonViewModel = PokemonViewModel()
    
    //State Variables
    @State private var pokemonSearchText = ""
    
    var filteredPokemon: [Pokemon] {
        if pokemonSearchText == "" {
            return pokemonViewModel.pokemon
        }
        return pokemonViewModel.pokemon.filter {
            $0.name.lowercased().contains(pokemonSearchText.lowercased())
        }
    }
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack{
                    Rectangle()
                        .foregroundColor(Color(.systemGray5))
                    HStack {
                        Image(systemName: "magnifyingglass")
                        TextField("Buscar Pokemon .." , text: $pokemonSearchText)
                    }
                    .foregroundColor(.gray)
                    .padding(.leading, 13)
                }
                .frame(height:40)
                .cornerRadius(13)
                .padding()
                
                List {
                    ForEach(filteredPokemon) {
                        pokemon in
                        NavigationLink(destination:
                                        PokemonDetailView(pokemon: pokemon)){
                            PokemonCell(pokemon: pokemon, pokemonViewModel: pokemonViewModel)
                        }
                        
                    }
                }
                .navigationTitle("Pokedex List")
            }
        }
    }
}

struct PokedexView_Previews: PreviewProvider {
    static var previews: some View {
        PokedexView()
    }
}
