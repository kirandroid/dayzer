//
//  home_screen.swift
//  dayzer
//
//  Created by USER on 2022/11/10.
//

import SwiftUI

struct HomeScreen: View{
    @State var search = ""
    var body: some View{
        ZStack(alignment: .top){
            Color.lightPink.ignoresSafeArea()
            ScrollView{
                VStack{
                    VStack(alignment: .leading){
                        HomeAppBar()
                        
                        HomeTaskTitle()
                        
                        Spacer().frame(height: 30)
                        HomeSearchField(search: search)
                        
                        Spacer().frame(height: 10)
                        
                        ConnectionListSection()
                        
                    }.padding(.all, 20)
                    ProjectSection()
                }
            }
            
        }
    }
}

struct HomeScreen_Previews: PreviewProvider{
    static var previews: some View{
        HomeScreen()
    }
}
