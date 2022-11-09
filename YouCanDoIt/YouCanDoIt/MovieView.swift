//
//  MovieView.swift
//  YouCanDoIt
//
//  Created by Minyoung Kim on 2022/11/08.
//

import SwiftUI

struct MovieView: View {
    
    init() {
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("Blue")
                    .ignoresSafeArea()
                
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
                        Text("")
                            .navigationBarTitle("Filog", displayMode: .inline)
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