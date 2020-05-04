//
//  MainTab.swift
//  PokeMaster
//
//  Created by 冯旭超 on 2020/5/4.
//  Copyright © 2020 冯旭超. All rights reserved.
//

import SwiftUI
import Foundation

struct MainTab: View {
    var body: some View {
        TabView {
            PokemonRootView().tabItem {
                Image(systemName: "list.bullet.below.rectangle")
                Text("列表")
            }
            SettingRootView().tabItem {
                Image(systemName: "gear")
                Text("设置")
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct MainTab_Previews: PreviewProvider {
    static var previews: some View {
        MainTab()
    }
}
