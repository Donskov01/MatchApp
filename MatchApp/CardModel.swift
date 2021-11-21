//
//  CardModel.swift
//  MatchApp
//
//  Created by Fedor Donskov on 09.11.2021.
//

import Foundation

class CardModel {
    
    func getCards() -> [Card] {
        
        // Declare an empty array to store numbers that we've generated
        var generatedNumbers = [Int]()
        
        // Declare an empty array
        var generatedCardsArray = [Card]()
        
        // Randomly generate 8 pairs of cards
        while generatedNumbers.count < 8 {
            
            // Generate a random number
            let randomNumber = Int.random(in: 1...13)
            
            if generatedNumbers.contains(randomNumber) == false {
            
                // Create two new card objects
                let cardOne = Card()
                let cardTwo = Card()
                
                // Set their image names
                cardOne.imageName = "card\(randomNumber)"
                cardTwo.imageName = "card\(randomNumber)"
                
                // Add them to the array
                generatedCardsArray += [cardOne, cardTwo]
                
                // Add this number to the list of generated numbers
                generatedNumbers.append(randomNumber)
                    
                print(randomNumber)
            }
        }
        
        // Randomize the cards within the array
        generatedCardsArray.shuffle()
        
        print(generatedCardsArray.count)
        
        // Return the array
        return generatedCardsArray
    }
    
}
