//
//  TextFieldView.swift
//  ColorMaker_SwiftUI_App
//
//  Created by Константин Кириллов on 29.10.2021.
//

import SwiftUI

struct TextFieldView: View {
    @Binding var textFieldValue: String
    
    var body: some View {
        TextField("value", text: $textFieldValue)
        .textFieldStyle(.roundedBorder)
        .frame(width: 70)
        .multilineTextAlignment(.trailing)
        .keyboardType(.decimalPad)
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(textFieldValue: .constant("245"))
            .previewDevice("iPhone 11")
    }
}
