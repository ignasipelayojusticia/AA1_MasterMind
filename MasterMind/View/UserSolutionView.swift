//
//  UserSolutionView.swift
//  MasterMind
//
//  Created by Alumne on 16/3/21.
//

import SwiftUI

struct UserSolutionView: View
{
    @ObservedObject var viewModel: ViewModel
    
    private let size: CGFloat = 30.0
    
    var body: some View
    {
        HStack
        {
            Circle().stroke(Color.black).foregroundColor(viewModel.userSolution.firstSphereColor).frame(width: size, height: size, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Circle().stroke(Color.black).foregroundColor(viewModel.userSolution.secondSphereColor).frame(width: size, height: size, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Circle().stroke(Color.black).foregroundColor(viewModel.userSolution.thirdSphereColor).frame(width: size, height: size, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            Circle().stroke(Color.black).foregroundColor(viewModel.userSolution.fourthSphereColor).frame(width: size, height: size, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
}

struct UserSolutionView_Previews: PreviewProvider
{
    static var previews: some View
    {
        UserSolutionView(viewModel: ViewModel())
    }
}
