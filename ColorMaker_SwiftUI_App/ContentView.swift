//
//  ContentView.swift
//  ColorMaker_SwiftUI_App
//
//  Created by Константин Кириллов on 29.10.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue  = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    
    @State private var redTextFieldValue = "" 
    @State private var greenTextFieldValue = ""
    @State private var blueTextFieldValue = ""
    
    @State private var textValue = ""
    @State private var colorView = Color(.green)
    
    var body: some View {
        ZStack {
            Color(.blue)
                 .ignoresSafeArea()
            VStack() {
                ColorView(colorView: colorView)
                    .padding(EdgeInsets(top: 40, leading: 16, bottom: 30, trailing: 16))
                VStack(spacing: 10) {
                    SliderComponent(sliderValue: $redSliderValue, textFieldValue: $redTextFieldValue, textValue: "\(lround(redSliderValue))", color: .red) { bool in
                        changeValues()
                    }
                    SliderComponent(sliderValue: $greenSliderValue, textFieldValue: $greenTextFieldValue, textValue: "\(lround(greenSliderValue))", color: .green) { bool in
                        changeValues()
                    }
                    SliderComponent(sliderValue: $blueSliderValue, textFieldValue: $blueTextFieldValue, textValue: "\(lround(blueSliderValue))", color: .blue) { bool in
                        changeValues()
                    }
                }
                Spacer()
            }
        
        }
    }
}

extension ContentView {
    private func getColor() {
        colorView = Color(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue)
    }
    
    private func changeValues() {
        redTextFieldValue = "\(lround(redSliderValue))"
        greenTextFieldValue = "\(lround(greenSliderValue))"
        blueTextFieldValue = "\(lround(blueSliderValue))"
        getColor()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone SE (2nd generation)")
    }
}

