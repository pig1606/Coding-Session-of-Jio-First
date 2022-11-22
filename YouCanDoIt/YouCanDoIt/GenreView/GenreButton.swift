//
//  GenreButton.swift
//  YouCanDoIt
//
//  Created by Minyoung Kim on 2022/11/21.
//

import SwiftUI

struct GenreButton: View {
    
    let buttons = ["All", "Sci-Fi", "Action", "Drama", "Thriller", "Music", "Adventure"]
    @State public var buttonSelected: Int?
    
    var body: some View {
        ScrollView (.horizontal) {
            HStack {
                ForEach(0..<buttons.count, id: \.self) { button in
                    Button(action: {
                        self.buttonSelected = button
                    }) {
                        ZStack {
                            Capsule()
                                .strokeBorder(Color.reds, lineWidth: 1)
                                .background(Capsule().foregroundColor(self.buttonSelected == button ? .reds : .clear))
                                .frame(width: 70, height: 32)
                            
                            Text("\(self.buttons[button])")
                                .foregroundColor(self.buttonSelected == button ? .white : .reds)
                                .fontWeight(.black)
                                .font(.system(size: 14))
                        }
                        .padding(.vertical, 5)
                        .padding(.top, 5)
                    }
                }
            }
            .padding(.leading, 16)
        }
    }
}
struct GenreButton_Previews: PreviewProvider {
    static var previews: some View {
        GenreButton()
    }
}
