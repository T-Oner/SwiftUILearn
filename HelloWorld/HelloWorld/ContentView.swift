//
//  ContentView.swift
//  HelloWorld
//
//  Created by 冯旭超 on 2020/3/18.
//  Copyright © 2020 冯旭超. All rights reserved.
//

import SwiftUI
import Combine

struct ContentView: View {
    
    let row: [CalculatorButtonItem] = [.digit(1), .digit(2), .digit(3), .op(.plus)]
    
    var body: some View {
        VStack(spacing: 8) {
            CalculatorButtonRow(row: [.command(.clear), .command(.flip), .command(.percent), .op(.divide)])
            CalculatorButtonRow(row: [.digit(1), .digit(2), .digit(3), .op(.plus)])
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

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

struct CalculatorButtonRow: View {
    let row: [CalculatorButtonItem]
    
    var body: some View {
        HStack {
            ForEach(row, id: \.self) { item in
                CalculatorButton(title: item.title, size: item.size, backgroundColorName: item.backgroundColorName) {
                    print("Button: \(item.title)")
                }
            }
        }
    }
    
}
