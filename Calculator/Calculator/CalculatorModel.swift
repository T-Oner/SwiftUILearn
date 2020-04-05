//
//  CalculatorModel.swift
//  Calculator
//
//  Created by 冯旭超 on 2020/4/5.
//  Copyright © 2020 冯旭超. All rights reserved.
//

import Combine

class CalculatorModel: ObservableObject {
    let objectWillChange = PassthroughSubject<Void, Never>()
    var brain: CalculatorBarin = .left("0") {
        willSet {
            objectWillChange.send()
        }
    }
    
}
