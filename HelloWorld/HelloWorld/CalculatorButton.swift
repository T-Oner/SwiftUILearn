//
//  CalculatorButton.swift
//  HelloWorld
//
//  Created by 冯旭超 on 2020/3/19.
//  Copyright © 2020 冯旭超. All rights reserved.
//

import SwiftUI

struct CalculatorButton: View {
    let fontSize: CGFloat = 38
    let title: String
    let size: CGSize
    let backgroundColorName: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: fontSize))
                .foregroundColor(.white)
                .frame(width: size.width, height: size.width)
                .background(Color(backgroundColorName))
                .cornerRadius(size.width / 2)
        }
    }
}
