//
//  EmailCheckingRequest.swift
//  PokeMaster
//
//  Created by 冯旭超 on 2020/5/4.
//  Copyright © 2020 冯旭超. All rights reserved.
//

import Combine
import Foundation

struct EmailCheckingRequest {
    let email: String
    
    var publisher: AnyPublisher<Bool, Never> {
        Future<Bool, Never> { promise in
            DispatchQueue.global().asyncAfter(deadline: .now() + 0.5) {
                if self.email.lowercased() == "1@fxcdev.com" {
                    promise(.success(false))
                } else {
                    promise(.success(true))
                }
            }
        }
        .receive(on: DispatchQueue.main)
        .eraseToAnyPublisher()
    }
}
