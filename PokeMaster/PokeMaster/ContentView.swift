//
//  ContentView.swift
//  PokeMaster
//
//  Created by 冯旭超 on 2020/4/12.
//  Copyright © 2020 冯旭超. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        VStack {
//            PokemonInfoRow(model: PokemonViewModel.sample(id: 1), expanded: false)
//            PokemonInfoRow(model: PokemonViewModel.sample(id: 21), expanded: true)
//            PokemonInfoRow(model: PokemonViewModel.sample(id: 25), expanded: false)
//        }
//        List(PokemonViewModel.all) { pokemon in
//            PokemonInfoRow(model: pokemon)
//        }
//        ScrollView {
//            ForEach(PokemonViewModel.all) { pokemon in
//                PokemonInfoRow(model: pokemon)
//            }
//        }
        SettingRootView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
