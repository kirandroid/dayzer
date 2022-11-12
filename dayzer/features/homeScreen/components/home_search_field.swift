//
//  home_search_field.swift
//  dayzer
//
//  Created by USER on 2022/11/12.
//

import SwiftUI

struct HomeSearchField: View{
    @State var search: String
    var body: some View{
        
        TextField("Search", text: $search)
            .frame(height: 60)
            .padding([.leading, .trailing])
            .background(Color.white)
            .cornerRadius(10)
            .overlay(Image(systemName: "magnifyingglass")
                .padding(.trailing, 20),
                     alignment: .trailing)
    }
}
