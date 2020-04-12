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
    
    var temporaryKept: [CalculatorButtonItem] = []
    
    func apply(_ item: CalculatorButtonItem) {
        brain = brain.apply(item: item)
        history.append(item)
        temporaryKept.removeAll()
        slidingIndex = Float(totalCount)
    }
    
    var historyDetail: String {
        history.map{ $0.description }.joined()
    }
    
    func keepHistory(upTo index: Int) {
        precondition(index <= totalCount, "Out of index.")
        
        let total = history + temporaryKept
        
        history = Array(total[..<index])
        temporaryKept = Array(total[index...])
        
        brain = history.reduce(CalculatorBarin.left("0")) { result, item in result.apply(item: item) }
    }
    
    var totalCount: Int {
        history.count + temporaryKept.count
    }

    var slidingIndex: Float = 0 {
        didSet {
            print("slidingIndex: \(slidingIndex)")
            keepHistory(upTo: Int(slidingIndex))
        }
    }
}
