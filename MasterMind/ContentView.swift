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
            
            SolutionView(firstSphereColor: viewModel.solution.firstSphereColor, secondSphereColor: viewModel.solution.secondSphereColor, thirdSphereColor: viewModel.solution.thirdSphereColor, fourthSphereColor: viewModel.solution.fourthSphereColor)
            
            
            HStack
            {
                ActionButtonView(label: "X", action: self.viewModel.ResetUserSolution, color: Color.red)
                
                UserSolutionView(firstSphereColor: self.viewModel.userSolution.firstSphereColor,
                                 secondSphereColor: self.viewModel.userSolution.secondSphereColor,
                                 thirdSphereColor: self.viewModel.userSolution.thirdSphereColor,
                                 fourthSphereColor: self.viewModel.userSolution.fourthSphereColor)
                
                ActionButtonView(label: ">", action: self.viewModel.SendSolution, color: Color.green)
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
