//
//  BlursBlending.swift
//  Project9-Drawing2(100SUI)
//
//  Created by Artem on 17.08.2023.
//

import SwiftUI

struct BlursBlending: View {
    @State private var amount = 0.0
    var body: some View {
// Version 1:
//        ZStack {
//            Image("Zvezdopad")
//                .resizable()
//                .scaledToFill()
//                .ignoresSafeArea()
//
//            Rectangle()
//                .fill(.red)
//                .blendMode(.multiply)
//        }
//        .frame(width: 400, height: 400)
//        .clipped()
// Version 2:
//        Image("Zvezdopad")
//            .colorMultiply(.cyan)
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
        VStack {
            ZStack {
                Image("Zvezdopad")
                   // .resizable()
                    //.scaledToFill()
                    .ignoresSafeArea()
                   // .frame(width: 400, height: 400)
                    .saturation(amount)
                Circle()
                    .fill(.red)
                    .frame(width: 200 * amount)
                    .offset(x:50, y: -80)
                    .blendMode(.screen)
                Circle()
                    .fill(.green)
                    .frame(width: 200*amount)
                    .offset(x: -50, y: -80)
                    .blendMode(.screen)
                Circle()
                    .fill(.blue)
                    .frame(width: 200*amount)
                    .blendMode(.screen)
            }
            .frame(width: 300, height: 300)
            
            Slider(value: $amount)
                .padding()
        }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.black)
            .ignoresSafeArea()
        }
        
    }

struct BlursBlending_Previews: PreviewProvider {
    static var previews: some View {
        BlursBlending()
    }
}
