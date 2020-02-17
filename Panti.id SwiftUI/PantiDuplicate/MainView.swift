//
//  MainView.swift
//  Panti.id SwiftUI
//
//  Created by Bayu Paoh on 03/02/20.
//  Copyright © 2020 Bayu Paoh. All rights reserved.
//

import SwiftUI

struct MainView: View {
    @State private var currentTab = 0
    
    var body: some View {
        TabView(selection: $currentTab) {
            HomeView()
                .tabItem {
                    Image(currentTab == 0 ? "ic_bottombar_telusuri_selected" : "ic_bottombar_telusuri_deactive")
                    Text("Kelola")
            }.tag(0)
            LoginView()
                .tabItem {
                    Image(currentTab == 1 ? "ic_bottombar_telusuri_selected" : "ic_bottombar_telusuri_deactive")
                    Text("Simpan")
            }.tag(1)
            LoginView()
                .tabItem {
                    Image(currentTab == 2 ? "ic_bottombar_telusuri_selected" : "ic_bottombar_telusuri_deactive")
                    Text("Akun")
            }.tag(2)
        }.accentColor(Color.pink).edgesIgnoringSafeArea(.top)
        
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

extension MainView {
  func setupTabBar() {
    UITabBar.appearance().barTintColor = .black
    UITabBar.appearance().tintColor = .blue
    UITabBar.appearance().layer.borderColor = UIColor.clear.cgColor
    UITabBar.appearance().clipsToBounds = true
  }
}
