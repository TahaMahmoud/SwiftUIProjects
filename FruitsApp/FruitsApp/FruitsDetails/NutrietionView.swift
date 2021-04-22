//
//  NutrietionView.swift
//  FruitsApp
//
//  Created by mac on 4/22/21.
//

import SwiftUI

struct NutrietionView: View {
    
    var fruit: Fruit
    var nutrients: [String] = ["Energy", "Sugar", "Fat", "Protien", "Vitamins", "Minerals"]
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutrietional Value Per 100g") {
                ForEach(0 ..< nutrients.count, id: \.self) { item in
                    
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        HStack {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

struct NutrietionView_Previews: PreviewProvider {
    static var previews: some View {
        NutrietionView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
