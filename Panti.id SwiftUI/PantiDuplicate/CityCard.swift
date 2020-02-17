//
//  CityCard.swift
//  Panti.id SwiftUI
//
//  Created by Bayu Paoh on 04/02/20.
//  Copyright © 2020 Bayu Paoh. All rights reserved.
//

import SwiftUI

struct CityCard: View {
    var body: some View {
        ZStack {
            Image("img_city").resizable()
            LinearGradient(gradient: Gradient(colors: [.red, .yellow]), startPoint: .top, endPoint: .bottom).opacity(0.7)
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).foregroundColor(Color.white).bold()
        }.cornerRadius(12)
        .frame(width: 150, height: 80)
    }
}

struct CityCard_Previews: PreviewProvider {
    static var previews: some View {
        CityCard()
    }
}
