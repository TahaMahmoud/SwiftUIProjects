//
//  CodableBundleExtension.swift
//  ZooPedia
//
//  Created by mac on 4/26/21.
//

import Foundation

extension Bundle {
    func decode<T: Codable> (_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed To Locate \(file)")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed To Load \(file)")
        }
        
        let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed To Decode \(file)")
        }
        
        return loaded
    }
}
