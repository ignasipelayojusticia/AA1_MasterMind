//
//  ContentView.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

import SwiftUI


struct ContentView: View
{
    @ObservedObject var viewModel: ViewModel
    
    
    var body: some View
    {
        ZStack
        {
            VStack
            {
                Text("AA1 Mastermind").font(.title).bold()
                Text("by Ignasi Pelayo").font(.footnote).italic()
                
                
                VStack
                {
                    ForEach(viewModel.rows, id: \.number)
                    {
                        row in
                        RowView(viewModel: viewModel, rowNumber: row.number)
                    }
                }
                
                Spacer()

                
                HStack
                {
                    ActionButtonView(icon: "trash.fill", action: self.viewModel.ResetUserSolution, color: Color.red)
                    
                    UserSolutionView(userSolution: viewModel.userSolution)
                    
                    ActionButtonView(icon: "play.fill", action: self.viewModel.SendSolution, color: Color.green)
                }


                HStack
                {
                    Spacer()
                    ColorButtonView(viewModel: viewModel, color: self.viewModel.validColors[0])
                    Spacer()
                    ColorButtonView(viewModel: self.viewModel, color: self.viewModel.validColors[1])
                    Spacer()
                    ColorButtonView(viewModel: self.viewModel, color: self.viewModel.validColors[2])
                    Spacer()
                    ColorButtonView(viewModel: self.viewModel, color: self.viewModel.validColors[3])
                    Spacer()
                }.padding(EdgeInsets(top: 0, leading: 0, bottom: 5, trailing: 0))
            }
            
            VStack
            {
                if(self.viewModel.gameStatus == GameStatus.victory)
                {
                    VictoryMessageView(numberOfTries: self.viewModel.currentRow, action: viewModel.PlayAgain)
                }
                else if(self.viewModel.gameStatus == GameStatus.defeat)
                {
                    DefeatMessageView(solution: self.viewModel.solution, action: self.viewModel.PlayAgain)
                }
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
