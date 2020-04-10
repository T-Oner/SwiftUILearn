//
//  CalculatorModel.swift
//  Calculator
//
//  Created by 冯旭超 on 2020/4/5.
//  Copyright © 2020 冯旭超. All rights reserved.
//

import Combine

class CalculatorModel: ObservableObject {
    @Published var brain: CalculatorBarin = .left("0")
    @Published var history: [CalculatorButtonItem] = []
    
    func apply(_ item: CalculatorButtonItem) {
        brain = brain.apply(item: item)
        history.append(item)
    }
}
