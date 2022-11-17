//
//  MovieView.swift
//  YouCanDoIt
//
//  Created by Minyoung Kim on 2022/11/08.
//

import SwiftUI

struct MovieView: View {
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("Blue")
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
                    GenreChips()
                    ZStack() {
                        ScrollView{
                            HStack{
                                VStack{
                                    MovieCardView(movieImage: "Poster0", movieTitle: "Knives Out", movieDescription: "Who hid the knife?")
                                    MovieCardView(movieImage: "Poster2", movieTitle: "The Amazing Spider-Man 2", movieDescription: "Romance?")
                                }
                                VStack{
                                    MovieCardView(movieImage: "Poster1", movieTitle: "Kill Your Darlings", movieDescription: "Kill your darlings to save yourself, Lucien Carr")
                                    MovieCardView(movieImage: "Poster3", movieTitle: "Tenet", movieDescription: "Not time inversion but mind inversion")
                                }
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
        MovieView()
    }
}
