//
//  Shop.swift
//  eCommerce
//
//  Created by mac on 4/28/21.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
