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
    
    var timer = Timer()
    
    
    var count = Int()
    
    var imageArray = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        count = 0
        //stopButtonを押せなくする
        stopButton.isEnabled = true
        
        
    }

    func starttimer(){
        //タイマーを回す 0.2秒ごとにあるメソッドを呼ぶ
        
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(timerUpdate), userInfo: nil, repeats: true)
    }
    
    //0.2秒ごとに呼ばれる
    @objc func timerUpdate(){
        
        count = count + 1
        imageView.image = imageArray[count]
        
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

