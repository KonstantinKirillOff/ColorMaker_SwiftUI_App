//
//  SliderView.swift
//  ColorMaker_SwiftUI_App
//
//  Created by Константин Кириллов on 29.10.2021.
//

import SwiftUI

struct SliderView: View {
    @Binding var sliderValue: Double
    let color: Color
    let changer: (Bool) -> Void
    
    var body: some View {
        Slider(value: $sliderValue, in: 0...255, step: 1, onEditingChanged: changer)
            .tint(color)
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(sliderValue: .constant(214), color: .green) { Bool in
            print("1")
        }
    }
}
