//
//  home_task_title.swift
//  dayzer
//
//  Created by USER on 2022/11/12.
//

import SwiftUI

struct HomeTaskTitle: View{
    var body: some View{
        VStack(alignment: .leading){
            
            Spacer().frame(height: 30)
            Text("Tasks for today:").font(.system(size: 30, weight: .bold))
            Spacer().frame(height: 10)
            HStack{
                Image(systemName: "star.fill").foregroundColor(.yellow)
                Text("5 available")
            }
        }
    }
}

struct HomeTaskTitle_Previews: PreviewProvider{
    static var previews: some View{
        HomeTaskTitle()
    }
}
