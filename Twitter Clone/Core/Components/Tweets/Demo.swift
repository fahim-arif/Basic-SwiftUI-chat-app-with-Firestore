//
//  Demo.swift
//  Twitter Clone
//
//  Created by Fahim on 13/7/23.
//

import SwiftUI

struct Demo: View {
    var body: some View {
        VStack (alignment: .leading) {
            HStack (alignment: .top) {
                Circle()
                    .frame( width: 56, height: 56 )
                    .foregroundColor(Color(.systemBlue))
                
                
                VStack {
                    Text ("Hello")
                    Text("world")
                }
            }
        }
    }
}

struct Demo_Previews: PreviewProvider {
    static var previews: some View {
        Demo()
    }
}

struct Previews_Demo_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
