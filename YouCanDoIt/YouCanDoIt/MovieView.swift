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
                    ScrollView{
                        VStack{
                            ForEach(movie[0...3], id: \.self) { item in
                                NavigationLink(destination: MovieDetailView(movie: item)){
                                    MovieCardView(movie: item)
                                }.buttonStyle(PlainButtonStyle())
                            }
                        }
                    }
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
