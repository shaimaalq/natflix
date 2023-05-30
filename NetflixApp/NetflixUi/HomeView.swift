//
//  HomeView.swift
//  NetflixApp
//
//  Created by shaima on 07/11/1444 AH.
//

import SwiftUI

struct HomeView: View {
    static let moviesCoverStrings = [
        "star",
        "joker",
        "arrival",
        "matrix",
        "sendgame",
        "interstellar",
        "how_to_train_your_dragon",
        "martian",
        "batman",
        "transformers",
        "avater",
    ]
     static let seriesCoverStrings = [
        "money_heist",
        "breaking_bad",
        "str",
        "prison",
    ]
static let all = moviesCoverStrings + seriesCoverStrings
    let watchAgainCovers = [
        "joker",
        "star",
        "end",
        "avatar",
   ]
    let covers1 = moviesCoverStrings
    let covers2 = seriesCoverStrings
    let covers3 = all.shuffled()
    
    var body: some View {
        GeometryReader { screenSize in
            ZStack{
                ScrollView(showsIndicators:false){
                    VStack(spacing: 30){
                        Image("str")
                            .resizable()
                            .scaledToFit()
                            .frame(width: screenSize.size.width, height: 600)
                            //.frame(minWidth: .infinity)
                            .clipped()
                        
                        MoviesRow(title: "wath Again", coverString: watchAgainCovers)
                        MoviesRow(title: "Movies", coverString: covers1)
                        MoviesRow(title: "series", coverString: covers2)
                        MoviesRow(title: "All", coverString: covers3)
                    }.padding(.bottom, 30)
                }
                VStack{
                    NavBar
                    Spacer()
                }
            }.background(Color.black.ignoresSafeArea())
        }
        .statusBar(hidden: true)
        
                }
    var NavBar: some View {
        VStack(spacing: 20){
            HStack{
                Image("netlogo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 50)
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "square.and.arrow.up")
                        .font(.system(size: 30))
                        .frame(width: 50, height: 50)
                })
                Button(action: {}, label: {
                    Image("str")
                        .resizable()
                        .frame(width: 50, height: 50)
                })
            }.padding(.top, 30)
            HStack{
                Button("series"){}
                Button("Movies"){}
                Button("Categories"){}
            }
            .font(.system(size: 22))
            .padding(.bottom, 30)
        }
        .padding(.horizontal)
        //.frame(minWidth: .infinity)
        .foregroundColor(Color.white)
        .background(
            LinearGradient(
                gradient:
                    Gradient(colors: [
                        .black.opacity(0.97),
                        .black.opacity(0.9),
                        .black.opacity(0.8),
                        .black.opacity(0.7),
                        .black.opacity(0),
                    ]), startPoint: .top, endPoint: .bottom).ignoresSafeArea())
       
        
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
