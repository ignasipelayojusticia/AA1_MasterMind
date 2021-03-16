//
//  ContentView.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

import SwiftUI


struct ContentView: View
{
    var viewModel: ViewModel
    
    
    var body: some View
    {
        VStack
        {
            Text("AA1 Mastermind").font(.title).bold()
            Text("by Ignasi Pelayo").font(.footnote).italic()
             
            List
            {
                ForEach(viewModel.rows, id: \.number)
                {
                    row in
                    RowView(viewModel: viewModel, rowNumber: row.number)
                }
            }.onAppear {
                UITableView.appearance().isScrollEnabled = false
            }
            
            Spacer()
            
            SolutionView(viewModel: viewModel)
            
            
        
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
