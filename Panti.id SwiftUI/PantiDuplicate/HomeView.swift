//
//  HomeView.swift
//  Panti.id SwiftUI
//
//  Created by Bayu Paoh on 04/02/20.
//  Copyright © 2020 Bayu Paoh. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading) {
                ZStack { Image("img_background_small").resizable().frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 188, alignment: .topLeading)
                    
                    VStack {
                        HStack {
                            Image(systemName: "magnifyingglass").padding()
                            Text("Cari Panti").frame(minWidth: 0, maxWidth: .infinity,  alignment: .leading)
                        }
                        .background(Color.white)
                        .cornerRadius(4)
                        .shadow(radius: 15)
                        .padding()
                    }
                }
                Group {
                    Text("Kota Terpopuler").bold()
                    ScrollView(.horizontal) {
                        HStack {
                            ForEach((1...10).reversed(), id: \.self) { _ in
                                CityCard()
                            }
                        }
                    }
                }
                Spacer()
            }.edgesIgnoringSafeArea(.top)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

/*
 
 */
