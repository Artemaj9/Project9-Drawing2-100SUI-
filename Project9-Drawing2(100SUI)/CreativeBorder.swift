//
//  CreativeBorder.swift
//  Project9-Drawing2(100SUI)
//
//  Created by Artem on 17.08.2023.
//

import SwiftUI

struct CreativeBorder: View {
    var body: some View {
        Capsule()
            .strokeBorder(ImagePaint(image: Image("Zvezdopad"), scale: 0.1), lineWidth: 20)
            .frame(width: 300, height: 200)
       // Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            //.foregroundColor(.white)
            .frame(width: 300, height: 300)
            //.background(.red)
            //.border(.red, width: 30)
            //.background(Image("Zvezdopad").resizable())
            //.border(ImagePaint(image: Image("Zvezdopad"), scale: 0.2), width: 50)
            //.border(ImagePaint(image: Image("Zvezdopad"), sourceRect: CGRect(x: 0, y: 0.25, width: 1, height: 0.7), scale: 0.1), width: 50)
      
    }
}

struct CreativeBorder_Previews: PreviewProvider {
    static var previews: some View {
        CreativeBorder()
    }
}
