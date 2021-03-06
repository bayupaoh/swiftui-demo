//
//  ItemDetail.swift
//  Panti.id SwiftUI
//
//  Created by Bayu Paoh on 05/02/20.
//  Copyright © 2020 Bayu Paoh. All rights reserved.
//

import SwiftUI

struct ItemDetail: View {
    var item: MenuItem
    @EnvironmentObject var order: Order
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                Text("Photo : \(item.photoCredit)")
                    .foregroundColor(.white)
                    .padding(4)
                    .background(Color.black)
                .offset(x: -5, y: -5)
            }
            Text(item.description)
                .padding()
            Spacer()
            Button("Order This") {
                self.order.add(item: self.item)
            }.font(.headline)
        }.navigationBarTitle(Text(item.name), displayMode: .inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static let order = Order()
    
    static var previews: some View {
        NavigationView {
            ItemDetail(item: MenuItem.example).environmentObject(order)
        }
    }
}
