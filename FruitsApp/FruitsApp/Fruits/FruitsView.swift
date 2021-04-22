//
//  ContentView.swift
//  FruitsApp
//
//  Created by mac on 4/21/21.
//

import SwiftUI

struct FruitsView: View {
    
    // MARK:- Properties
    var fruits: [Fruit] = fruitsData
    
    // MARK:- Body
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 5)
                }
            }
            .navigationTitle("Fruits")
            
        }
        
    }
}

struct FruitsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsView(fruits: fruitsData)
    }
}
