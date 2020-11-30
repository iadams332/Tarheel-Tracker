//
//  ContentView.swift
//  Tarheel Tracker
//
//  Created by Isaac Adams on 11/29/20.
//  Copyright © 2020 Isaac Adams. All rights reserved.
//

import SwiftUI

//Creates the button structure for the menu buttons
struct NavyButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(configuration.isPressed ? Color.cnavy : Color.white)
            .background(configuration.isPressed ? Color.white : Color.cnavy)
            .cornerRadius(6.0)
            .padding()
    }
}

struct ContentView: View {
    var body: some View {
        
        ZStack{
            
            //Creates the background gradient for the main menu
            LinearGradient(gradient: Gradient(colors: [.cblue,.cgrey]), startPoint: .bottom, endPoint: .trailing)
            
            //Top Level VStack containing all the items of the main menu
            VStack(){
                    
                Spacer()
                
                //HStack containing various menu buttons
                HStack{
                    Button(action: {
                       print("Hello, World Tapped")
                    }) {
                            Text("Start")
                            .background(Color.cnavy)
                            .foregroundColor(.white)
                            .font(.system(.body, design: .rounded))
                            .frame(width: 120, height: 60, alignment: .center)
                    }
                    .buttonStyle(NavyButtonStyle())
                    
                    Button(action: {
                       print("Hello, World Tapped")
                    }) {
                            Text("Instructions")
                            .background(Color.cnavy)
                            .foregroundColor(.white)
                            .font(.system(.body, design: .rounded))
                            .frame(width: 120, height: 60, alignment: .center)
                    }
                    .buttonStyle(NavyButtonStyle())
                    
                    Button(action: {
                       print("Hello, World Tapped")
                    }) {
                            Text("Settings")
                            .background(Color.cnavy)
                            .foregroundColor(.white)
                            .font(.system(.body, design: .rounded))
                            .frame(width: 120, height: 60, alignment: .center)
                    }
                    .buttonStyle(NavyButtonStyle())
                    
                    Button(action: {
                       print("Hello, World Tapped")
                    }) {
                            Text("Learn More")
                            .background(Color.cnavy)
                            .foregroundColor(.white)
                            .font(.system(.body, design: .rounded))
                            .frame(width: 120, height: 60, alignment: .center)
                    }
                    .buttonStyle(NavyButtonStyle())
                    
                }
                
                }
            }
            
        }
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
