//
//  ViewController.swift
//  Music Streaming App
//
//  Created by 64018011 on 5/29/24.
//

import SwiftUI

import AVKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Replace "videoFileName" with your video file's name
        if let videoURL = Bundle.main.url(forResource: "videoFileName", withExtension: "mp3") {
            player = AVPlayer(url: videoURL)
            
            let playerLayer = AVPlayerLayer(player: player)
            playerLayer.frame = view.bounds
            view.layer.addSublayer(playerLayer)
            
            // Start playing the video
            player?.play()
            
            // Observe when the playback ends
            NotificationCenter.default.addObserver(self, selector: #selector(playerDidFinishPlaying), name: .AVPlayerItemDidPlayToEndTime, object: player?.currentItem)
        }
    }
    
    @objc func playerDidFinishPlaying() {
        // Video playback has finished
        // Implement skip functionality here
    }
}

