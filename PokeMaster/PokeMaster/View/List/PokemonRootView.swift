//
//  PokemonRootView.swift
//  PokeMaster
//
//  Created by 冯旭超 on 2020/4/17.
//  Copyright © 2020 冯旭超. All rights reserved.
//

import SwiftUI

struct PokemonRootView: View {
    var body: some View {
        NavigationView {
            PokemonList()   .navigationBarTitle("宝可梦列表")
        }
    }
}

struct PokemonRootView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonRootView()
    }
}
