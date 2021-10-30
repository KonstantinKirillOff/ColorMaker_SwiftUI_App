//
//  ColirView.swift
//  ColorMaker_SwiftUI_App
//
//  Created by Константин Кириллов on 29.10.2021.
//

import SwiftUI

struct ColorView: View {
    let colorView: Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .foregroundColor(colorView)
            .frame(width: 350, height: 150)
            .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(lineWidth: 5)
                        .foregroundColor(.white))
    }
}

struct ColirView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(colorView: .orange)
    }
}
