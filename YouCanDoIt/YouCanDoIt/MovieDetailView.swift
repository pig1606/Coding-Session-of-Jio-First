//
//  MovieDetailView.swift
//  YouCanDoIt
//
//  Created by Minyoung Kim on 2022/11/09.
//

import SwiftUI

struct MovieDetailView: View {
    var movie: Movie
    
    var body: some View {
        ZStack {
            Color("Blue")
                .ignoresSafeArea()
            
            VStack{
                Image(movie.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 358, height: 528.48)
                    .clipped()
                    .cornerRadius(radius: 8, corners: [.allCorners])
                
                ZStack(alignment: .top){
                    Circle()
                        .fill(Color.white)
                        .frame(width: 76.71, height: 76.71)
                        .offset(y: -40)
                    
                    VStack(spacing: 6){
                        Text(movie.title)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 36))
                            .fontWeight(.black)
                        
                        Text(movie.description)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 24))
                            .fontWeight(.light)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(30)
                    .frame(width: 358)
                    .background(Rectangle()
                        .foregroundColor(.white)
                        .cornerRadius(radius: 8, corners: [.bottomLeft])
                        .cornerRadius(radius: 8, corners: [.bottomRight]))
                        
                        Image(systemName: movie.preference)
                            .foregroundColor(Color("Red"))
                            .font(.system(size: 40))
                            .offset(y: -25)
                }
                .offset(y: -25)
            }
        }
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: movieData[1])
    }
}
