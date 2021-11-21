//
//  SoundManager.swift
//  MatchApp
//
//  Created by Fedor Donskov on 21.11.2021.
//

import Foundation
import AVFoundation

class SoundManager {
    
    var audioPlayer:AVAudioPlayer?
    
    enum SoundEffect {
        case flip
        case match
        case nomatch
        case shuffle
    }
    
    func playSound(effect:SoundEffect) {
        
        var soundFilename = ""
        
        switch effect {
            
            case .flip:
                soundFilename = "cardflip"
                
            case .match:
                soundFilename = "dingcorrect"
                
            case .nomatch:
                soundFilename = "dingwrong"
                
            case .shuffle:
                soundFilename = "shuffle"
        }
        
        // Get the path to the resourse
        let bundlePath = Bundle.main.path(forResource: soundFilename, ofType: ".wav")
        
        // Check that it's not nil
        
        guard bundlePath != nil else {
            // Couldn't find the resource, exit
            return
        }
        
        let url = URL(fileURLWithPath: bundlePath!)
        
        do {
            // Create the audio player
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            
            // Play the sound effect
            audioPlayer?.play()
        }
        catch {
            print("Couldn't create an audio player")
            return
        }
        
    }
}
