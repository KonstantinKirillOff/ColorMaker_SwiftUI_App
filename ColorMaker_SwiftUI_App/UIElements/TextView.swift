//
//  TextView.swift
//  ColorMaker_SwiftUI_App
//
//  Created by Константин Кириллов on 29.10.2021.
//

import SwiftUI

struct TextView: View {
    let textValue: String
    
    var body: some View {
        Text("\(textValue)")
            .font(.system(size: 16))
            .foregroundColor(.white)
            .frame(width: 30, alignment: .leading)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(textValue: "text")
    }
}
