//
//  MoviesRow.swift
//  NetflixApp
//
//  Created by shaima on 07/11/1444 AH.
//

import SwiftUI

struct MoviesRow: View {
    let title: String
    let coverString: [String]
    var body: some View {
        VStack(alignment: .leading, content:{
            Text(title)
                .font(.system(size: 22,weight: .bold,design: .rounded))
                .foregroundColor(.white)
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 15) {
                    ForEach(coverString, id:\.self) { coverString in
                        Image(coverString)
                            .resizable()
                            .frame(width: 140,height: 200)
                        .clipShape(RoundedRectangle(cornerRadius: 6))}}
                .padding(.horizontal,5)
            }})
          
                
    }
}

struct MoviesRow_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            MoviesRow(title: "Movies", coverString: HomeView.moviesCoverStrings)
        }
        .frame(maxWidth: .infinity,maxHeight: .infinity)
        .background(Color.black)
        .ignoresSafeArea()
    }
}
