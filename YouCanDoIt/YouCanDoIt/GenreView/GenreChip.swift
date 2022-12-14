//
//  GenreChip.swift
//  YouCanDoIt
//
//  Created by Minyoung Kim on 2022/11/18.
//

import SwiftUI

struct GenreChip: View, Hashable {
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
    let chip: String
    var body: some View {
        ZStack {
            Capsule()
                .strokeBorder(Color.reds, lineWidth: 1)
                .background(Capsule().foregroundColor(selected ? .reds : .clear))
                .frame(width: 70, height: 32)
            
            Text("\(chip)")
                .foregroundColor(selected ? .white : .reds)
                .font(.system(size: 14, weight: .black))
        }
        .padding(.vertical, 8)
        .onTapGesture {
            self.selected.toggle()
        }
    }
}

struct GenreChip_Previews: PreviewProvider {
    static var previews: some View {
        GenreChip()
    }
}
