//
//  Store.swift
//  PokeMaster
//
//  Created by Toner on 2020/5/4.
//  Copyright © 2020 Toner. All rights reserved.
//

import Combine

class Store: ObservableObject {
    @Published var appState = AppState()
}
