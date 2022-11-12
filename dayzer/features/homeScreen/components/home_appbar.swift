//
//  home_appbar.swift
//  dayzer
//
//  Created by USER on 2022/11/12.
//

import SwiftUI

struct HomeAppBar: View{
    var body: some View{
        HStack{
            ProfileImage(showOnline: false, imageUrl: "https://randomuser.me/api/portraits/men/76.jpg")
            Text("Hi, Kira!")
            Spacer()
            Image(systemName: "bell.badge.fill").font(.system(size: 25))
        }
    }
}
