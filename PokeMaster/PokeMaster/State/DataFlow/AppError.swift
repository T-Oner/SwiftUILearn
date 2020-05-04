//
//  AppError.swift
//  PokeMaster
//
//  Created by 冯旭超 on 2020/5/4.
//  Copyright © 2020 冯旭超. All rights reserved.
//

import Foundation

enum AppError: Error, Identifiable {
    var id: String { localizedDescription }
    
    case passwordWrong
    
    case networkingFailed(Error)
}

extension AppError: LocalizedError {
    var localizedDescription: String {
        switch self {
        case .passwordWrong: return "密码错误"
        case .networkingFailed(let error): return error.localizedDescription
        }
    }
}
