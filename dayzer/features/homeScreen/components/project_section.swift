//
//  project_section.swift
//  dayzer
//
//  Created by USER on 2022/11/12.
//

import SwiftUI

struct ProjectSection: View{
    var body: some View{
        
        ZStack{
            VStack{
                HStack{
                    Text("Active projects").font(.system(size: 20).bold())
                    Spacer()
                    Text("See all").font(.system(size: 16)).foregroundColor(.gray)
                }
                ForEach(0..<8){ project in
                   ProjectItem()
                }
            }.padding(EdgeInsets(top: 40, leading: 30, bottom: 40, trailing: 30))
        }.background(RoundedRectangle(cornerRadius: 30).fill(Color.white))
    }
}

struct ProjectSection_Previews: PreviewProvider{
    static var previews: some View{
        ProjectSection()
    }
}
