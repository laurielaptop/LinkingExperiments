//
//  VideoPlaybackViewController.swift
//  TheExternalSwiftFramework
//
//  Created by Laurie Keith on 14/11/2018.
//  Copyright © 2018 Laurie Laptop. All rights reserved.
//

import UIKit
import AVKit

open class VideoPlaybackViewController: AVPlayerViewController {
    
    // MARK: - View Lifecycle
    
    override open func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Video Playback"
        self.view.backgroundColor = UIColor.black
        guard let url = Bundle(for: VideoPlaybackViewController.self).url(forResource: "Lucem", withExtension: "mp4") else {
            return
        }
        self.player = AVPlayer(url: url)
        self.player?.play()
    }
    
    // MARK: - Static Methods
    
    static public func configureAVAudioSession() {
        let audioSession = AVAudioSession.sharedInstance()
        do {
            if #available(iOS 10.0, *) {
                try audioSession.setCategory(.playback, mode: .moviePlayback, options: .defaultToSpeaker)
            } else {
                // Fallback on earlier versions
            }
        } catch {
            print("Setting category to AVAudioSessionCategoryPlayback failed.")
        }
    }
    
}
