//
//  SliderComponent.swift
//  ColorMaker_SwiftUI_App
//
//  Created by Константин Кириллов on 29.10.2021.
//

import SwiftUI

struct SliderComponent: View {
    @Binding var sliderValue: Double
    @Binding var textFieldValue: String
    let textValue: String
    let color: Color
    let changer: (Bool) -> Void
    
    var body: some View {
        HStack(spacing: 10) {
            TextView(textValue: textValue)
            SliderView(sliderValue: $sliderValue, color: color, changer: changer)
            TextFieldView(textFieldValue: $textFieldValue)
        }
        .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16))
    }
}

struct SliderComponent_Previews: PreviewProvider {
    static var previews: some View {
        SliderComponent(sliderValue: .constant(245), textFieldValue: .constant("245"), textValue: "245", color: .green) { bool in
            //
        }
    }
}
