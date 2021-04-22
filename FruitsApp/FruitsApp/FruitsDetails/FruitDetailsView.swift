//
//  FruitDetailsView.swift
//  FruitsApp
//
//  Created by mac on 4/22/21.
//

import SwiftUI

struct FruitDetailsView: View {
    
    var fruit: Fruit
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(alignment: .center, spacing: 20) {
                    // Header

                    FruitDetailsHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        // Title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // Headline
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // Nutrations
                        NutrietionView(fruit: fruit)
                        
                        // SubHeadline
                        Text("Learn More About \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        // Link
                        LinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)

                    } // VStack
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                    
                } // VStack
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }
            // Scroll View
           .edgesIgnoringSafeArea(.top)
        }
    }
}

struct FruitDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailsView(fruit: fruitsData[0])
    }
}
