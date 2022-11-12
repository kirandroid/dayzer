//
//  connected_members.swift
//  dayzer
//
//  Created by USER on 2022/11/13.
//

import SwiftUI

struct ConnectMembers: View{
    var body: some View{
        HStack{
            ProfileImage(showOnline: true, imageUrl: "https://randomuser.me/api/portraits/men/15.jpg")

            ProfileImage(showOnline: false, imageUrl: "https://randomuser.me/api/portraits/men/7.jpg")

            ProfileImage(showOnline: true, imageUrl: "https://randomuser.me/api/portraits/men/5.jpg")
            Image(systemName: "plus").frame(width: 55, height: 55, alignment: .center)
                .background(Color.gray.opacity(0.2))
                .clipShape(Circle())

        }
    }
}
