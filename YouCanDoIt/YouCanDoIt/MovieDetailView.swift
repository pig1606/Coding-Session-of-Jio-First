//
//  MovieDetailView.swift
//  YouCanDoIt
//
//  Created by Minyoung Kim on 2022/11/09.
//

import SwiftUI

struct MovieDetailView: View {
    var body: some View {
        ZStack {
            Color("Blue")
                .ignoresSafeArea()
            
            VStack() {
                Image("Poster0")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 358, height: 647.81)
                    .clipped()
                    .cornerRadius(radius: 8, corners: [.allCorners])
                
                ZStack{
                    Rectangle()
                        .fill(Color.white)
                        .frame(width: 358, height: 170.48)
                        .cornerRadius(radius: 8, corners: [.bottomLeft])
                        .cornerRadius(radius: 8, corners: [.bottomRight])
                    
                    Circle()
                        .fill(Color.white)
                        .frame(width: 76, height: 71)
                        .offset(y: -80)
                    
                    Image(systemName: "heart.fill")
                        .foregroundColor(Color("Red"))
                        .font(.system(size: 40, weight: .light))
                        .offset(y: -80)
                    
                    VStack{
                        Text("Knives Out")
                            .font(.system(size: 36))
                            .fontWeight(.black)
                        
                        Text("Who hid the knife?")
                            .font(.system(size: 24))
                            .fontWeight(.light)
                    }
                }
                .padding(.top, -30)
            }
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView()
    }
}
