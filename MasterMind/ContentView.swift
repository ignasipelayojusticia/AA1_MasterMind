//
//  ContentView.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

import SwiftUI

struct row
{
    let number: Int
    let colors: [Color]
}


struct ContentView: View
{
    var rowList: [row] =
    [
        row(number: 1, colors: [.gray, .gray, .gray, .gray]),
        row(number: 2, colors: [.gray, .gray, .gray, .gray]),
        row(number: 3, colors: [.gray, .gray, .gray, .gray]),
        row(number: 4, colors: [.gray, .gray, .gray, .gray]),
        row(number: 5, colors: [.gray, .gray, .gray, .gray]),
        row(number: 6, colors: [.gray, .gray, .gray, .gray]),
        row(number: 7, colors: [.gray, .gray, .gray, .gray]),
        row(number: 8, colors: [.gray, .gray, .gray, .gray]),
        row(number: 9, colors: [.gray, .gray, .gray, .gray]),
        row(number: 10, colors: [.gray, .gray, .gray, .gray]),
        row(number: 11, colors: [.gray, .gray, .gray, .gray]),
        row(number: 12, colors: [.gray, .gray, .gray, .gray])
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
                List
                {
                    ForEach(rowList, id: \.number)
                    {
                        row in
                        RowView(viewModel: ViewModel(),
                                firstSphereColor: row.colors[0],
                                secondSphereColor: row.colors[1],
                                thirdSphereColor: row.colors[2],
                                fourthSphereColor: row.colors[3])
                    }
                }
            }

            Text("Tried 2 times").font(.title2).background(Color.red).padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
