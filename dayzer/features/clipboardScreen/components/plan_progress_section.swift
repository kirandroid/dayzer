//
//  plan_progress_section.swift
//  dayzer
//
//  Created by USER on 2022/11/13.
//

import SwiftUI

struct PlanProgressSection: View{
    @State var downloadPercentage = 70.0
    var body: some View{
        Spacer().frame(height: 30)
        HStack{
            Text("Your daily plan").font(.system(size: 20, weight: .semibold))
            Spacer()
            Text("\(downloadPercentage, specifier: "%.f")%").font(.system(size: 14)).bold()
        }
        ProgressView(value: downloadPercentage, total: 100).progressViewStyle(LinearProgressViewStyle(tint: .black))
            .scaleEffect(x: 1, y: 1.8, anchor: .center)
        Spacer().frame(height: 20)
        Text("4 of 6 completed").font(.system(size: 14, weight: .medium)).foregroundColor(.gray)
        Spacer().frame(height: 30)
    }
}
