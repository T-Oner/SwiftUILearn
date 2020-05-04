//
//  LoginRequest.swift
//  PokeMaster
//
//  Created by 冯旭超 on 2020/5/4.
//  Copyright © 2020 冯旭超. All rights reserved.
//

import Combine
import Foundation

struct LoginRequest {
    let email: String
    let password: String
    
    var publisher: AnyPublisher<User, AppError> {
        return Future<User, AppError> { promise in
            DispatchQueue.global()
                .asyncAfter(deadline: .now() + 1.5) {
                    if self.password == "password" {
                        let user = User(email: self.email, favoritePokemenIDs: [])
                        promise(.success(user))
                    } else {
                        promise(.failure(.passwordWrong))
                    }
            }
        }
        .receive(on: DispatchQueue.main)
        .eraseToAnyPublisher()
    }
}
