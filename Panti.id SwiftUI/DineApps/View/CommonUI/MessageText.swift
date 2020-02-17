//
//  MessageText.swift
//  Panti.id SwiftUI
//
//  Created by Bayu Paoh on 07/02/20.
//  Copyright © 2020 Bayu Paoh. All rights reserved.
//

import SwiftUI

struct MessageText: View {
    var systemName: String
    var message: String
    
    var body: some View {
        VStack {
            Image(systemName: self.systemName).resizable().frame(width: 100, height: 100)
            Text(message)
                .foregroundColor(Color.gray)
                .fontWeight(.light)
        }
    }
}

struct MessageText_Previews: PreviewProvider {
    static var previews: some View {
        MessageText(systemName: "globe", message: "Test message")
    }
}
