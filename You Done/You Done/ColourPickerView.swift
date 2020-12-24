//
//  ColourPickerView.swift
//  You Done
//
//  Created by Piotr Galar on 22/12/2020.
//

import SwiftUI

struct ColourPickerView: View {
    @Binding var colour: Color
    
    var body: some View {
        HStack {
            ForEach(Constants.Colours, id: \.self.description) { colour in
                Button(action: {
                    self.colour = colour
                }, label: {
                    ZStack {
                        Rectangle().fill(colour).tag(colour)
                            .frame(
                                width: self.colour == colour ? Constants.BigButtonWidth : Constants.ButtonWidth,
                                height: self.colour == colour ? Constants.BigButtonHeight : Constants.ButtonHeight
                            ).shadow(radius: self.colour == colour ? Constants.BigShadowRadius : Constants.ShadowRadius)
                    }.frame(width: Constants.BigButtonWidth, height: Constants.BigButtonHeight)
                } ).buttonStyle(PlainButtonStyle())
            }
        }
    }
}