//
//  VictoryMessageView.swift
//  MasterMind
//
//  Created by Alumne on 19/3/21.
//

import SwiftUI

struct VictoryMessageView: View
{
    let viewModel: ViewModel
    
    var body: some View
    {
        VStack
        {
            Text(viewModel.gameStatus.rawValue).font(.title)
        }
    }
}


struct VictoryMessageView_Preview: PreviewProvider
{
    static var previews: some View
    {
        VictoryMessageView(viewModel: ViewModel())
    }
}
