//
//  PokemonInfoRow.swift
//  PokeMaster
//
//  Created by 冯旭超 on 2020/4/13.
//  Copyright © 2020 冯旭超. All rights reserved.
//

import Foundation
import SwiftUI

struct PokemonInfoRow: View {
    let model = PokemonViewModel.sample(id: 1)
    var body: some View {
        VStack {
            HStack {
                Image("Pokemon-\(model.id)")
                Spacer()
                VStack {
                    Text(model.name)
                    Text(model.nameEN)
                }
            }
            HStack {
                Spacer()
                Button(action: {}) {
                    Text("Fav")
                }
                Button(action: {}) {
                    Text("Panel")
                }
                Button(action: {}) {
                    Text("Web")
                }
            }
        }.background(Color.green)
    }
}
