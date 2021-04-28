//
//  Constants.swift
//  eCommerce
//
//  Created by mac on 4/27/21.
//

import SwiftUI

// DATA
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")


// COLORS
let backgroundColor: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)



// LAYOUTS
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// UX

// APIS

// IMAGES

// FONTS

// STRINGS

// MISC
