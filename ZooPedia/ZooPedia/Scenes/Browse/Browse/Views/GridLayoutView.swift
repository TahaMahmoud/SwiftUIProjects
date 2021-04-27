//
//  GridLayoutView.swift
//  ZooPedia
//
//  Created by mac on 4/27/21.
//

import SwiftUI

struct GridLayoutView: View {
    
    let animal: Animal
    
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct GridLayoutView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        GridLayoutView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
