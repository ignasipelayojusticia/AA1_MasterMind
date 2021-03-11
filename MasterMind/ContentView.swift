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
    var viewModel: ViewModel
    
    
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
                    ForEach(viewModel.rows, id: \.number)
                    {
                        row in
                        RowView(viewModel: viewModel,
                                firstSphereColor: row.firstSphereColor,
                                secondSphereColor: row.secondSphereColor,
                                thirdSphereColor: row.thirdSphereColor,
                                fourthSphereColor: row.fourthSphereColor)
                    }
                }
            }

            Text("Tried 2 times").font(.title2).background(Color.red).padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
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
    static var previews: some View {
        ContentView(viewModel: ViewModel())
    }
}
