//
//  contenView.swift
//  NetflixApp
//
//  Created by shaima on 07/11/1444 AH.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem({
                    Image(systemName: "house.fill")
                    Text("Home")
                }).tag("Home")
            HomeView()
                .tabItem({
                    Image(systemName: "film")
                    Text("syries")
                }).tag("syries")
            
            HomeView()
                .tabItem({
                    Image(systemName: "film")
                    Text("Movies")
                }).tag("Movies")
        }
        .accentColor(.white)
         .preferredColorScheme(.dark)
        .statusBar(hidden: true)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
