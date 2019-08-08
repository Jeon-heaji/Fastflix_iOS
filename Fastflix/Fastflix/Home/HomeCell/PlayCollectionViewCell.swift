//
//  PlayCollectionViewCell.swift
//  Fastflix
//
//  Created by Jeon-heaji on 06/08/2019.
//  Copyright © 2019 hyeoktae kwon. All rights reserved.
//

import UIKit
import AVKit

class PlayCollectionViewCell: UICollectionViewCell {
  
  static let identifier = "PlayCollectionViewCell"
  
//  var playerItem: AVPlayerItem?
//  lazy var player = AVPlayer(playerItem: playerItem)
  var player = AVPlayer()
  
  func configure(item: AVPlayerItem?) {
//    self.playerItem = item
//    player = AVPlayer()
    
    setupPlayer(item: item)
  }
  
  func setupPlayer(item: AVPlayerItem?) {
    
    var playerLayer: AVPlayerLayer?
    player.replaceCurrentItem(with: item)
    playerLayer = AVPlayerLayer(player: player)
    playerLayer?.masksToBounds = true
    playerLayer?.contentsGravity = .resizeAspectFill
    playerLayer?.frame = UIScreen.main.bounds
    
    
    self.layer.addSublayer(playerLayer!)
//    player.play()
  }
  
  override func didMoveToSuperview() {
    super.didMoveToSuperview()
    
  }
  
  
}
