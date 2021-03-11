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
                        RowView(viewModel: viewModel, rowNumber: row.number)
                    }
                }
            }

            Text("Tried \(viewModel.currentRow) times"  ).font(.title2).background(Color.red).padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ContentView(viewModel: ViewModel())
    }
}
