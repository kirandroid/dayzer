//
//  profile_image.swift
//  dayzer
//
//  Created by USER on 2022/11/13.
//

import SwiftUI

struct ProfileImage: View{
    var showOnline: Bool = false
    var imageUrl: String = "https://randomuser.me/api/portraits/men/75.jpg"
    var body: some View{
        ZStack(alignment: .topTrailing){
            
            AsyncImage(
                url: URL(string: imageUrl),
                content: { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 55, maxHeight: 55).clipShape(Circle())
                },
                placeholder: {
                    ProgressView()
                }
            )
            if showOnline {
                Circle()
                    .strokeBorder(Color.white, lineWidth: 1.5)
                    .background(Circle().foregroundColor(Color.green))
                    .frame(width: 10, height: 10)
                    .offset(x: -5, y: 0)
            }
        }.padding(.trailing, 10)
    }
}
