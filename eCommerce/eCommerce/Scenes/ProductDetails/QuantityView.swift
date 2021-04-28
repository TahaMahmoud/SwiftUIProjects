//
//  QuantityView.swift
//  eCommerce
//
//  Created by mac on 4/28/21.
//

import SwiftUI

struct QuantityView: View {
    
    @State private var counter: Int = 0
    
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {
                if counter > 0 {
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                if counter < 100 {
                    counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            })

            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })


        })
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
        
    }
}

struct QuantityView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
