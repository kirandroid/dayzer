//
//  connection_list_section.swift
//  dayzer
//
//  Created by USER on 2022/11/12.
//

import SwiftUI

struct ConnectionListSection: View{
    var connections = ConnectionResponse.listOfConnection
    var body: some View{
        VStack{
            HStack{
                Text("Last connections").font(.system(size: 20).bold())
                Spacer()
                Text("See all").font(.system(size: 15)).foregroundColor(.gray)
            }
            
            HStack{
                ForEach(0..<connections.count, id: \.self) { index in
                    let afterFourConnection = Array(connections.dropFirst(4))
                    if index <= 3 {
                        ProfileImage(showOnline: connections[index].isActive, imageUrl: connections[index].image)
                    }
                    if index == connections.count-1{
                        Text("+\(afterFourConnection.count)")
                            .frame(width: 55, height: 55, alignment: .center)
                            .background(Color.gray.opacity(0.2))
                            .foregroundColor(.black.opacity(0.7))
                            .clipShape(Circle())
                    }
                    
                }
            }
        }.padding([.top, .bottom], 20)
        
    }
}

struct ConnectionListSection_Previews: PreviewProvider{
    static var previews: some View{
        ConnectionListSection()
    }
}
