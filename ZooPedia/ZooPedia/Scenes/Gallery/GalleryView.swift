//
//  GalleryView.swift
//  ZooPedia
//
//  Created by Taha on 4/24/21.
//

import SwiftUI

struct GalleryView: View {
    
    @State private var selectdAnimal: String = "lion"
    
    let haptic = UIImpactFeedbackGenerator(style: .medium)
    
    let animals: [Animal] = Bundle.main.decode("animals.json")
    
    /*
    let gridLayout: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    */
    
    // let gridLayout: [GridItem] = Array(repeating: GridItem(), count: 3)
    
    // Dynamic Grid
    @State private var gridLayout: [GridItem] = [GridItem()]
    @State private var gridColumns: Double = 3
    
    func gridSwitch() {
        gridLayout = Array(repeating: GridItem(), count: Int(gridColumns))
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            VStack(alignment: .center, spacing: 30) {
            
                Image(selectdAnimal)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 8))
                
                
                Slider(value: $gridColumns, in: 2...4, step: 1)
                    .padding(.horizontal)
                    .onChange(of: gridColumns, perform: { value in
                        gridSwitch()
                    })
                
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                    ForEach(animals) { animal in
                        Image(animal.image)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 2))
                            .onTapGesture {
                                selectdAnimal = animal.image
                                haptic.impactOccurred()
                            }
                    }
                }
                .animation(.easeIn)
                .onAppear(perform: {
                    gridSwitch()
                })
            }
            .padding(.horizontal, 10)
            .padding(.vertical, 50)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(MotionAnimationView())
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
