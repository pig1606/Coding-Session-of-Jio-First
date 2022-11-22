//
//  GenreChips.swift
//  YouCanDoIt
//
//  Created by Minyoung Kim on 2022/11/09.
//

import SwiftUI

struct GenreChips: View {
    
    @State var selected = false
    @State var textColor: Color = .reds
    @State var capsuleColor: Color = .blues
    @State var chips: [[ChipData]] = [
        [ChipData(chipText: "All"), ChipData(chipText: "Sci-Fi"), ChipData(chipText: "Action"), ChipData(chipText: "Drama"), ChipData(chipText: "Thriller"), ChipData(chipText: "Music"), ChipData(chipText: "Adventure")]
    ]
    
    var body: some View {
        
        ScrollView(.horizontal){
            ForEach(chips.indices, id: \.self){ index in
                HStack{
                    ForEach(chips[index].indices, id: \.self){ chipIndex in
                        Text(chips[index][chipIndex].chipText)
                            .padding(.horizontal, 8)
                            .padding(.vertical, 8)
                            .foregroundColor(textColor)
                            .fontWeight(.black)
                            .font(.system(size: 14))
                            .background(Capsule()
                                .strokeBorder(Color.reds, lineWidth: 1)
                                .background(Capsule().foregroundColor(capsuleColor)))
                            .lineLimit(1)
                            .onTapGesture {
                                self.selected.toggle()
                                self.modifyColors()
                            }
                    }
                    .padding(.vertical, 16)
                }
            }
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

struct ChipData: Identifiable, Hashable {
    var id = UUID().uuidString
    var chipText: String
}

struct GenreChips_Previews: PreviewProvider {
    static var previews: some View {
        GenreChips()
    }
}
