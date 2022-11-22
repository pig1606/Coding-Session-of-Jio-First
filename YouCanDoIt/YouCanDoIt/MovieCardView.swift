//
//  MovieCardView.swift
//  YouCanDoIt
//
//  Created by Minyoung Kim on 2022/11/09.
//

import SwiftUI

struct MovieCardView: View {
    var movie: Movie
    
    var body: some View {
        ZStack{
            Color.blues
                .ignoresSafeArea()
            
            VStack{
                Image(movie.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 168, height: 248)
                    .clipped()
                    .cornerRadius(radius: 8, corners: [.allCorners])
                
                ZStack(alignment: .top){
                    Circle()
                        .fill(Color.white)
                        .frame(width: 36, height: 36)
                        .offset(y: -15)
                    
                    VStack(spacing: 6){
                        Text(movie.title)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 18))
                            .fontWeight(.black)
                        
                        Text(movie.description)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 14))
                            .fontWeight(.light)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(15)
                    .frame(width: 168)
                    .background(Rectangle()
                        .foregroundColor(.white)
                        .cornerRadius(radius: 8, corners: [.bottomLeft])
                        .cornerRadius(radius: 8, corners: [.bottomRight]))
                        
                        Image(systemName: movie.preference)
                            .foregroundColor(Color("Red"))
                            .font(.system(size: 20))
                            .offset(y: -7)
                }
                .offset(y: -25)
            }
        }
    }
}

struct MovieCardView_Previews: PreviewProvider {
    static var previews: some View {
        MovieCardView(movie: movieData[1])
    }
}
