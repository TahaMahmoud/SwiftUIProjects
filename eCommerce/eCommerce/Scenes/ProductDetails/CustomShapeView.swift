//
//  CustomShapeView.swift
//  eCommerce
//
//  Created by mac on 4/28/21.
//

import SwiftUI

struct CustomShapeView: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 35, height: 35))

        return Path(path.cgPath)
    }

}

struct CustomShapeView_Previews: PreviewProvider {
    static var previews: some View {
        CustomShapeView()
            .previewLayout(.fixed(width: 428, height: 120))
            .padding()
    }
}
