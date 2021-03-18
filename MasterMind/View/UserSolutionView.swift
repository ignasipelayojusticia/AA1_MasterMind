//
//  UserSolutionView.swift
//  MasterMind
//
//  Created by Alumne on 16/3/21.
//

import SwiftUI

struct UserSolutionView: View
{
	let viewModel: ViewModel
    
    private let size: CGFloat = 30.0
    
    var body: some View
    {
        HStack
        {
            Circle().fill(viewModel.userSolution.firstSphereColor).frame(width: size, height: size, alignment: .center)
            Circle().fill(viewModel.userSolution.secondSphereColor).frame(width: size, height: size, alignment: .center)
            Circle().fill(viewModel.userSolution.thirdSphereColor).frame(width: size, height: size, alignment: .center)
            Circle().fill(viewModel.userSolution.fourthSphereColor).frame(width: size, height: size, alignment: .center)
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
