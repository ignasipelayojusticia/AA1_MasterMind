//
//  ViewModel.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

import SwiftUI

class ViewModel: ObservableObject
{
    let maximumNumberOfTries: Int
    
    @Published private var currentRow: Int
    @Published var firstColor: Color
    
    @Published var rows: [Row]
    
    
    init()
    {
        self.maximumNumberOfTries = 12
        
        self.currentRow = 1
        self.firstColor = Color.red
        
        rows = [Row]()
        for number in 1...maximumNumberOfTries
        {
            rows.append(Row(thisNumber: number))
            print(number)
        }
    }
}

class Row
{
    let number: Int
    
    var firstSphereColor: Color
    var secondSphereColor: Color
    var thirdSphereColor: Color
    var fourthSphereColor: Color
    
    var firstAnswerColor: Color
    var secondAnswerColor: Color
    var thirdAnswerColor: Color
    var fourthAnswerColor: Color
    
    var finished: Bool
    
    init(thisNumber: Int)
    {
        self.number = thisNumber
        
        self.firstSphereColor = Color.gray
        self.secondSphereColor = Color.gray
        self.thirdSphereColor = Color.gray
        self.fourthSphereColor = Color.gray
        
        self.firstAnswerColor = Color.gray
        self.secondAnswerColor = Color.gray
        self.thirdAnswerColor = Color.gray
        self.fourthAnswerColor = Color.gray
        
        self.finished = false
    }
    
    func SetColor(newColor: Color)
    {
        if(self.firstSphereColor ==  Color.gray)
        {
            self.firstSphereColor = newColor
            return
        }
        
        if(self.secondSphereColor == Color.gray)
        {
            self.secondSphereColor = newColor
            return
        }
        
        if(self.thirdSphereColor == Color.gray)
        {
            self.thirdSphereColor = newColor
            return
        }
        
        if(self.fourthSphereColor == Color.gray)
        {
            self.fourthSphereColor = newColor
            return
        }
    }
}
