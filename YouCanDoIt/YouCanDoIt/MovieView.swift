//
//  MovieView.swift
//  YouCanDoIt
//
//  Created by Minyoung Kim on 2022/11/08.
//

import SwiftUI

struct MovieView: View {
    
    var movie: [Movie] = movieData
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.blues
                    .ignoresSafeArea()
                
                VStack{
                    GenreButton()
                    ScrollView {
                        HStack (alignment: .firstTextBaseline){
                            VStack{
                                NavigationLink(destination: MovieDetailView(movie: movieData[0])){
                                    MovieCardView(movie: movieData[0])
                                }.buttonStyle(PlainButtonStyle())
                                
                                NavigationLink(destination: MovieDetailView(movie: movieData[2])){
                                    MovieCardView(movie: movieData[2])
                                }.buttonStyle(PlainButtonStyle())
                                    .offset(y:-30)
                            }
                            
                            VStack{
                                NavigationLink(destination: MovieDetailView(movie: movieData[1])){
                                    MovieCardView(movie: movieData[1])
                                }.buttonStyle(PlainButtonStyle())
                                
                                NavigationLink(destination: MovieDetailView(movie: movieData[3])){
                                    MovieCardView(movie: movieData[3])
                                }.buttonStyle(PlainButtonStyle())
                            }
                        }
                        .offset(y: -20)
                    }
                    .padding()
                }
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("Filog")
                            .foregroundColor(.white)
                            .font(.system(size: 20, weight: .black))
                    }
                }
            }
        }
    }
}


struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView(movie: movieData)
    }
}
