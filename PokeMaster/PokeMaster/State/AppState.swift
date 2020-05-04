//
//  AppState.swift
//  PokeMaster
//
//  Created by Toner on 2020/5/4.
//  Copyright © 2020 Toner. All rights reserved.
//

struct AppState {
    var settings = Settings()
}

extension AppState {
    struct Settings {
        
        enum AccountBehavior: CaseIterable {
            case register, login
        }
        
        enum Sorting: CaseIterable {
            case id, name, color, favorite
        }
        
        var showEnglishName = true
        var sorting = Sorting.id
        var showFavoriteOnly = false
        var accountBehavior = AccountBehavior.login
        var email = ""
        var password = ""
        var verifyPassword = ""
    }
}
