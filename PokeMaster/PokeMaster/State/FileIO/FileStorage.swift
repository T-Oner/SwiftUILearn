//
//  FileStorage.swift
//  PokeMaster
//
//  Created by 冯旭超 on 2020/5/4.
//  Copyright © 2020 冯旭超. All rights reserved.
//
import SwiftUI

@propertyWrapper
struct FileStorage<T: Codable> {
    var value: T?
    
    let directory: FileManager.SearchPathDirectory
    let fileName: String
    
    init(directory: FileManager.SearchPathDirectory, fileName: String) {
        value = try? FileHelpers.loadJSON(from: directory, fileName: fileName)
        self.directory = directory
        self.fileName = fileName
    }
    
    var wrappedValue: T? {
        set {
            value = newValue
            if let value = newValue {
                try? FileHelpers.writeJSON(value, to: directory, fileName: fileName)
            } else {
                try? FileHelpers.delete(from: directory, fileName: fileName)
            }
        }
        
        get { value }
    }
}
