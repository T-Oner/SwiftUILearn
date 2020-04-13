//
//  PokemonViewModel.swift
//  PokeMaster
//
//  Created by 冯旭超 on 2020/4/13.
//  Copyright © 2020 冯旭超. All rights reserved.
//

import SwiftUI

struct PokemonViewModel: Identifiable, Codable {
    var id: Int { pokemon.id }
    
    let pokemon: Pokemon
    let species: PokemonSpecies
    
    init(pokemon: Pokemon, species: PokemonSpecies) {
        self.pokemon = pokemon
        self.species = species
    }
}
