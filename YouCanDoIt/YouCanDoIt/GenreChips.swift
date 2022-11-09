//
//  GenreChips.swift
//  YouCanDoIt
//
//  Created by Minyoung Kim on 2022/11/09.
//

import SwiftUI

struct GenreChips: View {
    
    @State var text = ""
    @State var chips: [[ChipData]] = [
        [ChipData(chipText: "All"), ChipData(chipText: "Sci-Fi"), ChipData(chipText: "Action"), ChipData(chipText: "Drama"), ChipData(chipText: "Thriller"), ChipData(chipText: "Music"), ChipData(chipText: "Adventure")]
    ]
    
    var body: some View {
        
        ScrollView(.horizontal){
            ForEach(chips.indices){index in
                HStack{
                    ForEach(chips[index].indices){chipIndex in
                        Text(chips[index][chipIndex].chipText)
                            .padding(.horizontal, 8)
                            .padding(.vertical, 8)
                            .foregroundColor(Color("Red"))
                            .fontWeight(.black)
                            .font(.system(size: 14))
                            .background(Capsule().stroke(Color("Red"), lineWidth: 1))
                            .lineLimit(1)
                    }
                    .padding(.vertical, 16)
                }
            }
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
