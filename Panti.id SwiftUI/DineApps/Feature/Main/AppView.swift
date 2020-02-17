//
//  AppView.swift
//  Panti.id SwiftUI
//
//  Created by Bayu Paoh on 06/02/20.
//  Copyright © 2020 Bayu Paoh. All rights reserved.
//

import SwiftUI

struct AppView: View {
     var body: some View {
        TabView {
            MenuView().tabItem {
                Image(systemName: "list.dash")
                Text("Menu")
            }
            OrderView().tabItem {
                Image(systemName: "square.and.pencil")
                Text("Order")
            }
            MovieView().tabItem {
                Image(systemName: "square.and.pencil")
                Text("Now Playing")
            }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static let order = Order()
    static var previews: some View {
        AppView().environmentObject(order)
    }
}
