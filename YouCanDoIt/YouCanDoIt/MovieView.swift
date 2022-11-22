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
                
                Text("")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .principal) {
                            Text("Filog")
                                .fontWeight(.black)
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                        }
                    }
                
                VStack{
                    GenreButton()
                        ScrollView{
                                VStack{
                                    ForEach(movie[0...3]) { item in
                                        MovieCardView(movie: item)
                                    }
                                }
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
