//
//  ContentView.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

import SwiftUI


struct ContentView: View {
    var rowList: [Row] = [
        Row(number: 1, firstSphereColor: Color.red),
        Row(number: 2, firstSphereColor: Color.yellow)
    ]
    
    var body: some View {
        VStack
        {
            Text("MasterMind")
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.orange)
                
            VStack
            {
                ForEach(rowList, id: \.number)
                {
                    $0.body
                }
            }

            Text("Tried 2 times").font(.title2).background(Color.red).padding()
        
            
            Circle().fill(Color.red).frame(width: 100, height: 100, alignment: .center)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
