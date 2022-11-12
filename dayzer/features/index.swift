//
//  index.swift
//  dayzer
//
//  Created by USER on 2022/11/10.
//

import SwiftUI

struct IndexView: View{
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
        
    }
    enum TabName{
        case home, folder, clipboard, calendar
    }
    @State var selectedTab: TabName = TabName.home
    
    var body: some View{
        TabView{
            HomeScreen()
                .tabItem {
                    Image(systemName: "house.fill")
                }.tag(TabName.home)
            
            FolderScreen()
                .tabItem {
                    Image(systemName: "folder.fill")
                }.tag(TabName.folder)
            
            ClipboardScreen()
                .tabItem {
                    Image(systemName: "list.bullet.clipboard.fill")
                }.tag(TabName.clipboard)
            
            CalendarScreen()
                .tabItem {
                    Image(systemName: "calendar")
                }.tag(TabName.calendar)
        }.accentColor(.black)
    }
}

struct IndexView_Previews: PreviewProvider{
    static var previews: some View{
        IndexView()
    }
}
