//
//  onboarding.swift
//  dayzer
//
//  Created by USER on 2022/11/08.
//

import SwiftUI

struct OnboardingScreen: View{
    var body: some View{
        NavigationView{
            ZStack{
                Color.lightGreen
                VStack{
                    Spacer().frame(height: 50)
                    Text("To simplify\nthe way you\nwork").foregroundColor(.black)
                        .font(.system(size: 40, weight: .heavy)).multilineTextAlignment(.center)
                        .frame(maxWidth: .infinity, alignment: .center)
                    Image("LandingImage")
                        .resizable()
                        .frame(width: 300, height: 300)
                    
                    Text("Controlling deliveries in\nreliable and no-hassle way.").foregroundColor(.black)
                        .font(.system(size: 20, weight: .light))
                    Spacer().frame(height: 50)
                    
                    ZStack{
                        Button(action: {}, label: {
                            NavigationLink(destination: IndexView().navigationBarBackButtonHidden(true)){
                                Text("Get free trial").foregroundColor(.white).font(.system(size: 20, weight: .bold))
                            }
                        }).frame(maxWidth: .infinity)
                        
                            .padding(.all, 30).background(RoundedRectangle(cornerRadius: 8).fill(.black))
                    }.padding(.horizontal, 20)
                    
                    
                    
                }
                
                
            }.toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    HStack{
                        Image(systemName: "pencil.tip.crop.circle").font(.system(size: 25))
                        
                        Text("Dayzer").foregroundColor(.black)
                            .font(.system(size: 25, weight: .heavy))
                        
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing
                ){
                    
                    Image(systemName: "sparkles").foregroundColor(.white).font(.system(size: 30))
                }
            }
            .ignoresSafeArea()
        }
    }
}


struct OnboardingScreen_Previews: PreviewProvider{
    static var previews: some View{
        OnboardingScreen()
    }
}
