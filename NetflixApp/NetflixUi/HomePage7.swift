//
//  HomePage7.swift
//  NetflixApp
//
//  Created by shaima on 06/11/1444 AH.
//

import SwiftUI

struct HomePage7: View {
    var body: some View {
        VStack {
           
            Image("net1")
                .resizable()
                .frame(width: 410, height: 940)
        }
        .padding()
    }
}

struct HomePage7_Previews: PreviewProvider {
    static var previews: some View {
        HomePage7()
    }
}
