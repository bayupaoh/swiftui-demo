//
//  ContentView.swift
//  Panti.id SwiftUI
//
//  Created by Bayu Paoh on 30/01/20.
//  Copyright © 2020 Bayu Paoh. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State private var phone: String = ""
    
    var body: some View {
        ZStack {
            VStack{
                ZStack { Image("img_background_login").resizable().frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 308, alignment: .topLeading)
                    Image("img_logo").frame(minWidth: 0, maxWidth: 98, minHeight: 0, maxHeight: 98)
                }
                Spacer()
            }
            VStack {
                VStack(spacing: 24) {
                    Spacer().frame(height: 12)
                    Text("Masukan Nomor HP").frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .font(.headline)
                    TextField("", text: $phone).frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 40, alignment: .topLeading).overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.black, lineWidth: 1)
                    )
                    
                    Button("Mulai"){
                        
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 40, alignment: .center)
                    .background(Color.purple)
                    .foregroundColor(Color.white)
                    .cornerRadius(20)
                    Spacer().frame(height: 12)
                    
                }
                .padding()
                .background(Color.white)
                .cornerRadius(20)
                .shadow(radius: 15)
                .padding()
                HStack {
                    VStack {
                        Divider()
                    }
                    Text("atau")
                    VStack {
                        Divider()
                    }
                }.padding()
                
                Button(action: {
                    
                }) {
                    HStack {
                        Image("ic_facebook").renderingMode(.original)
                        Text("Masuk dengan Facebook").foregroundColor(Color.black)
                    }
                }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 40, alignment: .center)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20).stroke(Color.blue, lineWidth: 1)
                ).padding()
                
                Button(action: {
                    
                }) {
                    HStack {
                        Image("ic_google").renderingMode(.original)
                        Text("Masuk dengan Google").foregroundColor(Color.black)
                    }
                }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 40, alignment: .center)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20).stroke(Color.red, lineWidth: 1)
                ).padding()
                
                HStack {
                    Text("Login nanti")
                    Image("ic_right_arrow")
                }
            }
        }.edgesIgnoringSafeArea(.all)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
