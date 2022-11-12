//
//  task_tracker_item.swift
//  dayzer
//
//  Created by USER on 2022/11/13.
//

import SwiftUI

struct TaskTrackerItem: View{
    var title: String
    var subtitle: String
    var icon: String
    
    var body: some View{
        VStack(alignment: .leading){
            Text(title).font(.system(size: 30, weight: .bold))
            
            Spacer().frame(height: 5)
            HStack{
                Image(systemName: icon).font(.system(size: 12))
                Text(subtitle).font(.system(size: 14)).foregroundColor(.black.opacity(0.6))
            }
        }.frame(minWidth: 0, maxWidth: .infinity).padding(EdgeInsets(top: 20, leading: 0, bottom: 20, trailing: 10))
            .background(RoundedRectangle(cornerRadius: 8).fill(Color.lightYellow))
    }
}
