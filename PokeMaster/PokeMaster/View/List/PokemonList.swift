//
//  PokemonList.swift
//  PokeMaster
//
//  Created by 冯旭超 on 2020/4/15.
//  Copyright © 2020 冯旭超. All rights reserved.
//

import SwiftUI

struct PokemonList: View {
    
    @State var expandingIndex: Int?
    @State var searchKey: String = ""
    
    var body: some View {
        ScrollView {
            TextField("搜索", text: $searchKey)
                .padding(.horizontal)
            ForEach(PokemonViewModel.all) { pokemon in
                PokemonInfoRow(
                    model: pokemon,
                    expanded: self.expandingIndex == pokemon.id
                )
                    .onTapGesture {
                        if self.expandingIndex == pokemon.id {
                            self.expandingIndex = nil
                        } else {
                            self.expandingIndex = pokemon.id
                        }
                }
            }
        }
//        .overlay(
//            VStack {
//                Spacer()
//                PokemonInfoPanel(model: .sample(id: 1))
//            }
//            .edgesIgnoringSafeArea(.bottom)
//        )
    }
}

struct PokemonList_Previews: PreviewProvider {
    static var previews: some View {
        PokemonList()
    }
}
