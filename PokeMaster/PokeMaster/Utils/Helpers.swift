//
//  Helpers.swift
//  PokeMaster
//
//  Created by 冯旭超 on 2020/4/13.
//  Copyright © 2020 冯旭超. All rights reserved.
//

import Foundation

extension String {
    var newlineRemoved: String {
        return split(separator: "\n").joined(separator: " ")
    }
}
