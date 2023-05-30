//
//  HomePage1.swift
//  NetflixApp
//
//  Created by shaima on 06/11/1444 AH.
//

import SwiftUI
struct OnBpardingStep {
    let image : String
    //let title : String
   // let description: String
}
private let onBpardingStep = [
    OnBpardingStep(image: "nat1"),
    OnBpardingStep(image: "net2"),
 OnBpardingStep(image: "nat1")
]
struct HomePage1: View {
    @State private var currentStep = 0
    init() {
        UIScrollView.appearance().bounces = false
    }
    var body: some View {
        ZStack{
            
            HStack{
                Spacer()
                Button(action: {
  self.currentStep = onBpardingStep.count - 1
                }){
                    
                    
                    Text("Skip")
                        .padding()
                        .foregroundColor(.gray)
                    
                }}
            TabView(selection: $currentStep){
                ForEach(0..<onBpardingStep.count) {it in
                    VStack{
                        
                        Image(onBpardingStep[it].image)
                            .resizable()
                            .frame(width: 450,height: 850)
                        
                        //Text(onBpardingStep[it].title)
                           // .font(.title)
                            //.bold()
                        
                       // Text(onBpardingStep[it].description)
                            //.multilineTextAlignment(.center)
                            //.padding(.horizontal, 32)
                           // .padding(.top, 16)
                    }
                    .tag(it)
                    
                }
            }
.tabViewStyle(PageTabViewStyle(indexDisplayMode:.never))
            
            HStack{
                ForEach(0..<onBpardingStep.count) {it in
                    if it == currentStep {
                        Rectangle()
                            .frame(width: 20,height: 10)
                            .cornerRadius(10)
                            .foregroundColor(.purple)
                    }else{
                        Circle()
                            .frame(width: 10,height: 10)
                            .foregroundColor(.gray)
                    }
                }}
            .padding(.bottom, 24)
            Button(action:{
                if self.currentStep < onBpardingStep.count - 1 {
                    self.currentStep += 1
                }else{
                }
            }){
                Text(currentStep < onBpardingStep.count - 1 ? "Next" : "Get started")
                    .padding(16)
                    .frame(maxWidth: .infinity)
                    .background(Color.purple)
                    .padding(.horizontal, 16)
                    .cornerRadius(16)
                .foregroundColor(.white)}
            .buttonStyle(PlainButtonStyle())
            
        }
    }
    
    struct HomePage1_Previews: PreviewProvider {
        static var previews: some View {
            HomePage1()
        }
    }
}
