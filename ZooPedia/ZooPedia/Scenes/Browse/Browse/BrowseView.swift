//
//  ContentView.swift
//  ZooPedia
//
//  Created by Taha on 4/24/21.
//

import SwiftUI

struct BrowseView: View {
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    let haptic = UIImpactFeedbackGenerator(style: .medium)
    @State private var isGridViewActive: Bool = false
    
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumns: Int = 1
    @State private var toolBarIcon: String = "square.grid.2x2"
    
    func gridSwitch() {
        gridLayout = Array(repeating: .init(.flexible()) , count: gridLayout.count % 3 + 1 )
        gridColumns = gridLayout.count
        
        switch gridColumns {
        case 1:
            toolBarIcon = "square.grid.2x2"
        case 2:
            toolBarIcon = "square.grid.3x2"
        case 3:
            toolBarIcon = "rectangle.grid.2x2"
        default:
            toolBarIcon = "square.grid.2x2"

        }
    }
    
    var body: some View {
        NavigationView {
            
            Group {
                if !isGridViewActive {
                    List {
                        CoverImageView()
                            .frame(height: 300)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                            .padding(.bottom, 20)
                        
                        ForEach(animals) { animal in
                            NavigationLink( destination: AnimalDetailsView(animal: animal)){
                                    AnimalListItemView(animal: animal)
                                }
                        }
                    }
                } else {
                    ScrollView(.vertical, showsIndicators: false){
                        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10){
                            
                            ForEach(animals) { animal in
                                NavigationLink( destination: AnimalDetailsView(animal: animal)){
                                        GridLayoutView(animal: animal)
                                    }
                            }

                        }
                        .padding(10)
                        .animation(.easeIn)
                    }
                }
            }
            .navigationBarTitle("ZooPedia", displayMode: .large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        
                        // List Layout
                        Button(action: {
                            isGridViewActive = false
                            haptic.impactOccurred()
                        }){
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .primary : .accentColor)
                        }
                        
                        // Grid Layout
                        Button(action: {                            isGridViewActive = true
                            haptic.impactOccurred()
                            gridSwitch()
                        }){
                            Image(systemName: toolBarIcon)
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .accentColor  : .primary)
                        }
                    }
                }
            }
        }
    }
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        BrowseView()
    }
}
