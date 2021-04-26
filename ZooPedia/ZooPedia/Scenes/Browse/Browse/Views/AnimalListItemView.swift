//
//  AnimalListItemView.swift
//  ZooPedia
//
//  Created by mac on 4/26/21.
//

import SwiftUI

struct AnimalListItemView: View {
    
    let animal: Animal
    
    var body: some View {
        HStack(alignment: .center, spacing: 16){
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .foregroundColor(.accentColor)
                    .fontWeight(.heavy)
                Text(animal.headline)
                    .font(.footnote)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                    .padding(.leading, 8)
            }
        }
    }
}

struct AnimalListItemView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        AnimalListItemView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
