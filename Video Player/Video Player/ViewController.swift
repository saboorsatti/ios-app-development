//
//  ViewController.swift
//  Video Player
//
//  Created by Saboor on 21/01/2020.
//  Copyright © 2020 Saboor. All rights reserved.
//

import UIKit
import AVKit
class ViewController: UIViewController {
    
    
    @IBAction func playVideo(_ sender: Any) {
        
        if let videopath = Bundle.main.path(forResource: "NatureVideo", ofType: "mp4") //accessing video path
        {
            let myvideo = AVPlayer(url: URL(fileURLWithPath: videopath)) //accessing video
            let videoplayer = AVPlayerViewController() //accessing video player
            videoplayer.player = myvideo  //giving video player video
            
            //now presenting videoplayer on screen
            present(videoplayer, animated: true) {
                myvideo.play()
            }
            
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

