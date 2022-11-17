//
//  GenreChip.swift
//  YouCanDoIt
//
//  Created by Minyoung Kim on 2022/11/18.
//

import SwiftUI

struct GenreChip: View {
    let genre: [String] = ["All", "Sci-Fi", "Action", "Drama", "Thriller", "Music", "Adventure"]
    
    var body: some View {
        ScrollView(.horizontal){
            HStack{
                ForEach(genre, id: \.self) { i in
                    Subview(chip: i)
                }
            }
            .padding(.leading, 16)
        }
    }
}

struct Subview: View {
    @State var selected = false
    @State var textColor: Color = .reds
    @State var capsuleColor: Color = .blues
    let chip: String
    var body: some View {
        ZStack {
            Capsule()
                .strokeBorder(Color.reds, lineWidth: 1)
                .background(Capsule().foregroundColor(capsuleColor))
                .frame(width: 70, height: 32)
            
            Text("\(chip)")
                .foregroundColor(textColor)
                .fontWeight(.black)
                .font(.system(size: 14))
        }
        .padding(.vertical, 8)
        .onTapGesture {
            self.selected.toggle()
            self.modifyColors()
        }
    }
    
    func modifyColors() {
        if selected {
            textColor = .white
            capsuleColor = .reds
        } else {
            textColor = .reds
            capsuleColor = .blues
        }
    }
}

struct GenreChip_Previews: PreviewProvider {
    static var previews: some View {
        GenreChip()
    }
}
