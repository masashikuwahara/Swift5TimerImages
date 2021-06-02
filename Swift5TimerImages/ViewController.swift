//
//  ViewController.swift
//  Swift5TimerImages
//
//  Created by 桑原雅史 on 2021/06/02.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var startButton: UIButton!
    
    
    @IBOutlet weak var stopButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //stopButtonを押せなくする
        stopButton.isEnabled = true
        
    }

    
    @IBAction func start(_ sender: Any) {
        
        //imageviewのimageに画像を反映していく
        
        //startButtonは押せなくする
        startButton.isEnabled = true
    }
    
    
    
    @IBAction func stop(_ sender: Any) {
        
        //imageviewのimageに反映されている画像の流れをストップする
        
        
        //startButtonを押せるようにする
        startButton.isEnabled = false
        
    }
    
    
}

