//
//  User.swift
//  PokeMaster
//
//  Created by 冯旭超 on 2020/5/4.
//  Copyright © 2020 冯旭超. All rights reserved.
//

struct User: Codable {
    var email: String
    
    var favoritePokemenIDs: Set<Int>
    
    func isFavoritePokemon(id: Int) -> Bool {
        favoritePokemenIDs.contains(id)
    }
}
