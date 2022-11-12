//
//  project_item.swift
//  dayzer
//
//  Created by USER on 2022/11/12.
//

import SwiftUI

struct ProjectItem: View{
    var body: some View{
        ZStack{
            VStack(alignment: .leading){
                HStack{
                    Text("Numero 10").font(.system(size: 12)).foregroundColor(.gray)
                    Spacer()
                    Text("4h").font(.system(size: 12)).foregroundColor(.gray)
                }.padding(.bottom, 1)
                Text("Blog and Social post").font(.system(size: 20).bold()).padding(.bottom, 15)
                HStack{
                    Image(systemName: "exclamationmark.circle").frame(width: 10, height: 10)
                    Text("Deadline is today").font(.system(size: 15))
                }
                
            }.padding()
        }
        .background(RoundedRectangle(cornerRadius: 8).stroke(.gray)).padding(.top, 20)
    }
}


struct ProjectItem_Previews: PreviewProvider{
    static var previews: some View{
        ProjectItem()
    }
}
