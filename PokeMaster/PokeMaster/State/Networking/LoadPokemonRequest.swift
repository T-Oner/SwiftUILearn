//
//  LoadPokemonRequest.swift
//  PokeMaster
//
//  Created by 冯旭超 on 2020/5/4.
//  Copyright © 2020 冯旭超. All rights reserved.
//

import Combine
import Foundation

struct LoadPokemonRequest {
    let id: Int
    
    var publisher: AnyPublisher<PokemonViewModel, AppError> {
        pokemonPublisher(id)
            .print()
            .flatMap { self.speciesPublisher($0) }
            .map { PokemonViewModel(pokemon: $0, species: $1) }
            .mapError { AppError.networkingFailed($0)}
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
    
    func pokemonPublisher(_ id: Int) -> AnyPublisher<Pokemon, Error> {
        URLSession.shared
            .dataTaskPublisher(for: URL(string: "https://pokeapi.co/api/v2/pokemon/\(id)")!)
            .map { $0.data }
            .decode(type: Pokemon.self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
    
    func speciesPublisher(
        _ pokemon: Pokemon
    ) -> AnyPublisher<(Pokemon, PokemonSpecies), Error> {
        URLSession.shared
            .dataTaskPublisher(for: pokemon.species.url)
            .map { $0.data }
            .decode(type: PokemonSpecies.self, decoder: JSONDecoder())
            .map { (pokemon, $0) }
            .eraseToAnyPublisher()
    }
}
