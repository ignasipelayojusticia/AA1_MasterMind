//
//  RowView.swift
//  MasterMind
//
//  Created by Alumne on 11/3/21.
//

import SwiftUI

struct RowView: View
{
    let viewModel: ViewModel
    
    let rowNumber: Int
    
    private let size: CGFloat = 25.0
    private let answerSize: CGFloat = 10.0
 
    
    var body: some View
    {
        HStack
        {
            Text("\(rowNumber + 1)").font(.title3).frame(width: 25, height: 35, alignment: .leading).padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 40))
            
            HStack
            {
                Circle().strokeBorder(Color.gray, lineWidth: 1)
                    .background(Circle().fill(viewModel.rows[rowNumber].solution.sphereColors[0]))
                    .frame(width: size, height: size, alignment: .center)
                Circle().strokeBorder(Color.gray, lineWidth: 1)
                    .background(Circle().fill(viewModel.rows[rowNumber].solution.sphereColors[1]))
                    .frame(width: size, height: size, alignment: .center)
                Circle().strokeBorder(Color.gray, lineWidth: 1)
                    .background(Circle().fill(viewModel.rows[rowNumber].solution.sphereColors[2]))
                    .frame(width: size, height: size, alignment: .center)
                Circle().strokeBorder(Color.gray, lineWidth: 1)
                    .background(Circle().fill(viewModel.rows[rowNumber].solution.sphereColors[3]))
                    .frame(width: size, height: size, alignment: .center)
            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 50))

            
            HStack
            {
                VStack
                {
                    Circle()
                        .strokeBorder(Color.gray, lineWidth: 1)
                        .background(Circle().fill(viewModel.rows[rowNumber].answerColors.sphereColors[0])).frame(width: answerSize, height: answerSize, alignment: .center)
                        .opacity((viewModel.rows[rowNumber].answerColors.sphereColors[0] == Color.gray) ? 0 : 1)
                    
                    Circle()
                        .strokeBorder(Color.gray, lineWidth: 1)
                        .background(Circle().fill(viewModel.rows[rowNumber].answerColors.sphereColors   [2])).frame(width: answerSize, height: answerSize, alignment: .center)
                        .opacity((viewModel.rows[rowNumber].answerColors.sphereColors[2] == Color.gray) ? 0 : 1)
                }
                VStack
                {
                    Circle()
                        .strokeBorder(Color.gray, lineWidth: 1)
                    .background(Circle().fill(viewModel.rows[rowNumber].answerColors.sphereColors[1])).frame(width: answerSize, height: answerSize, alignment: .center)
                        .opacity((viewModel.rows[rowNumber].answerColors.sphereColors[1] == Color.gray) ? 0 : 1)
                    
                    Circle()
                        .strokeBorder(Color.gray, lineWidth: 1)
                    .background(Circle().fill(viewModel.rows[rowNumber].answerColors.sphereColors[3])).frame(width: answerSize, height: answerSize, alignment: .center)
                        .opacity((viewModel.rows[rowNumber].answerColors.sphereColors[3] == Color.gray) ? 0 : 1)
                }
            }
        }.frame(minWidth: 100, idealWidth: 300, maxWidth: .infinity,
                minHeight: 15, idealHeight: 25, maxHeight: 30,
                alignment: .center)
    }
}

struct RowView_Previews: PreviewProvider
{
    static var previews: some View
    {
        RowView(viewModel: ViewModel(), rowNumber: 0)
    }
}
