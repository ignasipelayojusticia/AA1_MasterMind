//
//  ViewModel.swift
//  MasterMind
//
//  Created by Alumne on 9/3/21.
//

import SwiftUI


class ViewModel: ObservableObject
{
    let maximumNumberOfTries: Int = 12
    
    var currentRow: Int = 0
    
    var solution: Solution
    @Published var rows: [Row]
    var userSolution: UserSolution
    
    var validColors: [Color] = [.red, .blue, .yellow, .green]
    
    init()
    {
        self.solution = Solution(self.validColors)
        self.rows = [Row]()
        self.userSolution = UserSolution()
        
        for number in 0...(maximumNumberOfTries - 1)
        {
            self.rows.append(Row(thisNumber: number))
        }
    }
    
    func ResetUserSolution() -> Void
    {
        userSolution.ResetUserSolution()
    }
}

class Row
{
    @Published var number: Int
    
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
}

struct Solution
{
    var firstSphereColor: Color = Color.gray
    var secondSphereColor: Color = Color.gray
    var thirdSphereColor: Color = Color.gray
    var fourthSphereColor: Color = Color.gray
    
    var visible: Bool = true
    
    init(_ validColors: [Color])
    {
        self.firstSphereColor = validColors[Int.random(in: (0...3))]
        self.secondSphereColor = validColors[Int.random(in: (0...3))]
        self.thirdSphereColor = validColors[Int.random(in: (0...3))]
        self.fourthSphereColor = validColors[Int.random(in: (0...3))]
    }
}

class UserSolution
{
    var firstSphereColor: Color
    var secondSphereColor: Color
    var thirdSphereColor: Color
    var fourthSphereColor: Color
    
    init()
    {
        self.firstSphereColor = Color.white
        self.secondSphereColor = Color.white
        self.thirdSphereColor = Color.white
        self.fourthSphereColor = Color.white
    }
    
    func ResetUserSolution() -> Void
    {
        self.firstSphereColor = Color.white
        self.secondSphereColor = Color.white
        self.thirdSphereColor = Color.white
        self.fourthSphereColor = Color.white
    }
}
