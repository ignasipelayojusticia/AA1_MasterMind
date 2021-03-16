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
            }.onAppear
            {
                UITableView.appearance().isScrollEnabled = false
            }
            
            Spacer()
            
            SolutionView(viewModel: viewModel)
            
            HStack
            {
                ActionButtonView(label: "X", action: viewModel.ResetUserSolution, color: Color.red)
                UserSolutionView(viewModel: viewModel)
                ActionButtonView(label: ">", action: viewModel.ResetUserSolution, color: Color.green)
            }

            Spacer()
            
            HStack
            {
                Spacer()
                ColorButtonView(viewModel: viewModel, color: viewModel.validColors[0])
                Spacer()
                ColorButtonView(viewModel: viewModel, color: viewModel.validColors[1])
                Spacer()
                ColorButtonView(viewModel: viewModel, color: viewModel.validColors[2])
                Spacer()
                ColorButtonView(viewModel: viewModel, color: viewModel.validColors[3])
                Spacer()
            }
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
