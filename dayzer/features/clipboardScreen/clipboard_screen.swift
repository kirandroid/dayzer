//
//  clipboard_screen.swift
//  dayzer
//
//  Created by USER on 2022/11/10.
//

import SwiftUI

struct ClipboardScreen: View{
    var body: some View{
        NavigationView{
            ZStack{
                Color.lightGreen.ignoresSafeArea()
                ScrollView{
                    VStack{
                        RoundedRectangle(cornerRadius: 8)
                            .fill(.gray.opacity(0.3))
                            .frame(width: 70, height: 4)
                        
                        ZStack{
                            VStack(alignment: .leading){
                                Text("Messaging ID").font(.system(size: 30, weight: .semibold))
                                PlanProgressSection()
                                
                                HStack{
                                    TaskTrackerItem(title: "17", subtitle: "Tasks finished", icon: "clipboard.fill")
                                    TaskTrackerItem(title: "32", subtitle: "Tracked hours", icon: "clock.fill")
                                }
                                
                                Group{
                                    Spacer().frame(height: 30)
                                    Text("Overview").font(.system(size: 20, weight: .semibold))
                                    Spacer().frame(height: 20)
                                    Text("Messaging ID framework development for the marketing branch and the publicity bureau and implemented a draft on the framework.").font(.system(size: 14, weight: .medium)).lineSpacing(5).foregroundColor(.gray)
                                    
                                    Spacer().frame(height: 40)
                                    
                                    Text("Members connected").font(.system(size: 20, weight: .semibold))
                                    
                                    Spacer().frame(height: 20)
                                    ConnectMembers()
                                    
                                }
                                
                            }.padding(EdgeInsets(top: 40, leading: 30, bottom: 100, trailing: 30))
                        }.background(RoundedRectangle(cornerRadius: 30).fill(Color.white))
                    }
                }
            }.toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Circle()
                        .stroke(.gray.opacity(0.3), lineWidth: 1.3)
                        .frame(width: 44, height: 44)
                        .overlay{
                            Image(systemName: "xmark").font(.system(size: 15).bold())
                        }.padding()
                }
                ToolbarItem(placement: .navigationBarTrailing)
                {
                    Image(systemName: "ellipsis").foregroundColor(.black.opacity(0.8)).font(.system(size: 20)).padding()
                }
            }
            
        }
        
    }
}

struct ClipboardScreen_Previews: PreviewProvider{
    static var previews: some View{
        ClipboardScreen()
    }
}
