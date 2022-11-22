//
//  MovieCardView.swift
//  YouCanDoIt
//
//  Created by Minyoung Kim on 2022/11/09.
//

import SwiftUI

struct MovieCardView: View {
    var movieImage: String
    var movieTitle: String
    var movieDescription: String
    var moviePreference: String
    
    var body: some View {
        ZStack{
            Color.blues
                .ignoresSafeArea()
            
            VStack{
                Image(movieImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 168, height: 248)
                    .clipped()
                    .cornerRadius(radius: 8, corners: [.allCorners])
                
                ZStack{
                    VStack(alignment: .center, spacing: 4){
                        Text(movieTitle)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 18))
                            .fontWeight(.black)

                        Text(movieDescription)
                            .multilineTextAlignment(.center)
                            .font(.system(size: 14))
                            .fontWeight(.light)
                    }
                    .padding(20)
                    .background(Rectangle()
                        .foregroundColor(.white)
                        .frame(width: 168)
                        .cornerRadius(radius: 8, corners: [.bottomLeft])
                        .cornerRadius(radius: 8, corners: [.bottomRight]))
                    
                    ZStack{
                        Circle()
                            .fill(Color.white)
                            .frame(width: 36, height: 36)
                        
                        Image(systemName: moviePreference)
                            .foregroundColor(Color("Red"))
                            .font(.system(size: 20))
                    }
                    .offset(y: -30)
                }
                .offset(y: -25)
            }
        }
    }
}

struct MovieCardView_Previews: PreviewProvider {
    static var previews: some View {
        MovieCardView(movieImage: "Poster1", movieTitle: "Kill Your Darlings", movieDescription: "Kill your darlings to save yourself, Lucien Carr", moviePreference: "heart.fill")
    }
}
