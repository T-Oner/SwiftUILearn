//
//  SettingRootView.swift
//  PokeMaster
//
//  Created by 冯旭超 on 2020/4/17.
//  Copyright © 2020 冯旭超. All rights reserved.
//

import SwiftUI

struct SettingRootView: View {
    var body: some View {
        NavigationView {
            SettingView().navigationBarTitle("设置")
        }
    }
}

struct SettingRootView_Previews: PreviewProvider {
    static var previews: some View {
        SettingRootView()
    }
}
