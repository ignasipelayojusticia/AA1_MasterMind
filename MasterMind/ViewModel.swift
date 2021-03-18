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
    
    @Published var currentRow: Int = 0
    
    @Published var solution: Solution
    @Published var rows: [Row]
    @Published var userSolution: Solution
    
    let validColors: [Color] = [.red, .blue, .yellow, .green]
    
    init()
    {
        self.solution = Solution()
        self.rows = [Row]()
        self.userSolution = Solution()
        
        self.CreateSolution()
    }
    
    private func CreateSolution()
    {
        self.solution.sphereColors[0] = self.validColors[Int.random(in: (0...self.validColors.count - 1))]
        self.solution.sphereColors[1] = self.validColors[Int.random(in: (0...self.validColors.count - 1))]
        self.solution.sphereColors[2] = self.validColors[Int.random(in: (0...self.validColors.count - 1))]
        self.solution.sphereColors[3] = self.validColors[Int.random(in: (0...self.validColors.count - 1))]
    }
    
    public func SendSolution()
    {
        for sphereIndex in 0...(userSolution.sphereColors.count - 1)
        {
            if(userSolution.sphereColors[sphereIndex] == Color.white)
            {
                return
            }
        }

        self.rows.append(Row(thisNumber: self.currentRow, solution: self.userSolution))
							 
        if(self.CheckSolution())
        {
            print("You won!!!")
        }
		
        self.currentRow += 1
        
        self.ResetUserSolution()
    }
    
	private func CheckSolution() -> Bool
	{
		var correctPositions: [Int] = [Int]()
		var incorrectPositions: [Int] = [Int]()
	
		for position in 0...3
		{
			if(CheckForSamePosition(position: position))
			{
				correctPositions.append(position)
			}
			else
			{
				incorrectPositions.append(position)
			}
		}
        
		if(correctPositions.count == 4)
		{
            self.rows[currentRow].answerColors = Solution(correctSolutions: correctPositions.count, incorrectSolutions: 0)
			return true
		}
        
        var diferentPositions: Int = 0
        var activeSpheres: [Bool] = [Bool](repeating: false, count: incorrectPositions.count)
        
        
        for position in 0...(incorrectPositions.count - 1)
        {
            if(CheckForDifferentPosition(position: incorrectPositions[position], incorrectPositions: incorrectPositions, activeSpheres: &activeSpheres))
            {
                diferentPositions += 1
            }
        }

        
        self.rows[currentRow].answerColors = Solution(correctSolutions: correctPositions.count, incorrectSolutions: diferentPositions)
        
        return false
	}
	
	private func CheckForSamePosition(position: Int) -> Bool
	{
        return self.rows[self.currentRow].solution.sphereColors[position] == self.solution.sphereColors[position]
	}
    
    private func CheckForDifferentPosition(position: Int, incorrectPositions: [Int], activeSpheres: inout [Bool]) -> Bool
    {
        var foundOnDiferentPosition: Bool = false
        
        for pos in 0...(incorrectPositions.count - 1)
        {
            if(incorrectPositions[pos] != position && !activeSpheres[pos] &&
                self.rows[self.currentRow].solution.sphereColors[incorrectPositions[pos]] == self.solution.sphereColors[position])
            {
                foundOnDiferentPosition = true
                activeSpheres[pos] = true
                break
            }
        }
        
        return foundOnDiferentPosition
    }
	
    public func ResetUserSolution()
    {
        self.userSolution.sphereColors[0] = Color.white
        self.userSolution.sphereColors[1] = Color.white
        self.userSolution.sphereColors[2] = Color.white
        self.userSolution.sphereColors[3] = Color.white
    }
    
    public func AddColor(color: Color)
    {
        if(self.currentRow >= self.maximumNumberOfTries)
        {
            return
        }
        
        if(self.userSolution.sphereColors[0] == Color.white)
        {
            self.userSolution.sphereColors[0] = color
            return
        }
        if(self.userSolution.sphereColors[1] == Color.white)
        {
            self.userSolution.sphereColors[1] = color
            return
        }
        if(self.userSolution.sphereColors[2] == Color.white)
        {
            self.userSolution.sphereColors[2] = color
            return
        }
        if(self.userSolution.sphereColors[3] == Color.white)
        {
            self.userSolution.sphereColors[3] = color
            return
        }
    }
}

struct Row
{
    let number: Int
    
    var solution: Solution
    var answerColors: Solution
    
    init(thisNumber: Int, solution: Solution)
    {
        self.number = thisNumber
        
        self.solution = Solution(solution)
        
        self.answerColors = Solution(Color.gray)
    }
}

struct Solution
{
    var sphereColors: [Color] = [Color.white, Color.white, Color.white, Color.white]
    
    init()
    {
        
    }
    
    init(_ solution: Solution)
    {
        self.sphereColors = solution.sphereColors
    }
    
    init(_ defaultColor: Color)
    {
        self.sphereColors = [defaultColor, defaultColor, defaultColor, defaultColor]
    }
    
    init(correctSolutions: Int, incorrectSolutions: Int)
    {
        if(correctSolutions > 0)
        {
            for number in 0...(correctSolutions - 1)
            {
                self.sphereColors[number] = Color.red
            }
        }
        
        if(incorrectSolutions > 0)
        {
            for number in 0...(incorrectSolutions - 1)
            {
                self.sphereColors[correctSolutions + number] = Color.yellow
            }
        }
    }
}
