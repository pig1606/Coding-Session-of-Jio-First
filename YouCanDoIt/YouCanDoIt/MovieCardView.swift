//
//  MovieCardView.swift
//  YouCanDoIt
//
//  Created by Minyoung Kim on 2022/11/09.
//

import SwiftUI

struct CornerRadiusShape: Shape {
    var radius = CGFloat.infinity
    var corners = UIRectCorner.allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct CornerRadiusStyle: ViewModifier {
    var radius: CGFloat
    var corners: UIRectCorner

    func body(content: Content) -> some View {
        content
            .clipShape(CornerRadiusShape(radius: radius, corners: corners))
    }
}

extension View {
    func cornerRadius(radius: CGFloat, corners: UIRectCorner) -> some View {
        ModifiedContent(content: self, modifier: CornerRadiusStyle(radius: radius, corners: corners))
    }
}

struct MovieCardView: View {
    var movieImage: String
    var movieTitle: String
    var movieDescription: String
    
    var body: some View {
        VStack() {
            Image(movieImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 168, height: 248)
                .clipped()
                .cornerRadius(radius: 8, corners: [.allCorners])
            
            ZStack{
                Rectangle()
                    .fill(Color.white)
                    .frame(width: 168, height: 115)
                    .cornerRadius(radius: 8, corners: [.bottomLeft])
                    .cornerRadius(radius: 8, corners: [.bottomRight])
                
                Circle()
                    .fill(Color.white)
                    .frame(width: 36, height: 36)
                    .offset(y: -57)
                
                Image(systemName: "heart.fill")
                    .foregroundColor(Color("Red"))
                    .offset(y: -57)
                
                VStack{
                    Text(movieTitle)
                        .font(.system(size: 18))
                        .fontWeight(.black)
                    
                    Text(movieDescription)
                        .font(.system(size: 14))
                        .fontWeight(.light)
                }
            }
            .padding(.top, -30)
        }
    }
}

struct MovieCardView_Previews: PreviewProvider {
    static var previews: some View {
        MovieCardView(movieImage: "Poster0", movieTitle: "Knives Out", movieDescription: "Who hid the knife?")
    }
}
