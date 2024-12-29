//
//  AudioPlayer.swift
//  Restart
//
//  Created by Ayanesh Sarkar on 29/12/24.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
  if let path = Bundle.main.path(forResource: sound, ofType: type) {
    let url = URL(fileURLWithPath: path)
    do {
      audioPlayer = try AVAudioPlayer(contentsOf: url)
      audioPlayer?.play()
    } catch {
      print("Could not play the sound file.")
    }
  }
}
