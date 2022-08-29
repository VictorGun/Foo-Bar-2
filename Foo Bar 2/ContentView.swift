//
//  ContentView.swift
//  Foo Bar 2
//
//  Created by Victor Gunderson on 8/29/22.
//

import SwiftUI

struct ContentView: View {
    @State private var counter = 0
    @State private var display = "0"
    @State private var color = Color.black
    var body: some View {
        ZStack {
            color.ignoresSafeArea()
            Text(display)
                .font(.system(size: 128))
                .multilineTextAlignment(.center)
                .preferredColorScheme(.dark)
                .onTapGesture {
                    counter += 1
                    if counter % 3 == 0 && counter % 5 == 0 {
                        display = "Foo Bar"
                        color = .red
                    } else if counter % 5 == 0 {
                        display = "Bar"
                        color = .yellow
                    } else if counter % 3 == 0  {
                        display = "Foo"
                        color = .green
                    } else {
                        display = "\(counter)"
                        color = .black
                    }
                }
                .onLongPressGesture {
                    counter = 0
                    display = "\(counter)"
                    color = .black
           }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


