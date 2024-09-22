//
//  ViewController.swift
//  Animation app
//
//  Created by Nguyễn Anh Kiệt on 3/9/24.
//

import UIKit

class ViewController: UIViewController {
    var imageIndex:Int = 1
    var isAnimating:Bool = false
    var timer: Timer?
    
   
    @IBOutlet weak var nextImage: UIButton!
    
    func updateImg() {
        print ("Image/goodnight\(imageIndex)")
        image.image = UIImage(named: "Image/goodnight\(imageIndex)")
    }
    
    @IBAction func nextimage(_ sender: UIButton) {
        if (imageIndex >= 37) {
            imageIndex = 1
        } else {
            imageIndex += 1
        }
        updateImg()
    }
    
    
    @IBOutlet weak var reset: UIButton!
    
    @IBAction func btn_reset(_ sender: UIButton) {
        resetAnimation()
    }
    
    
    @IBOutlet weak var image: UIImageView!
    

    
    @IBAction func btnToggleAnimation(_ sender: Any) {
        reset.isHidden = false
        if (isAnimating) {
            isAnimating = false
            toggleAnimation.setTitle("Pause",for:.normal)
            toggleAnimation.tintColor = .systemOrange
            startAnimation()
        }
        else {
            isAnimating = true
            toggleAnimation.setTitle("Animation",for:.normal)
            toggleAnimation.tintColor = .systemGreen
            pauseAnimation()
        }
    }
    
    @IBOutlet weak var toggleAnimation: UIButton!
    
    func startTimer(){
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in self.nextimage(self.nextImage)
        }
    }
    
    func stopTimer(){
        timer?.invalidate()
        timer = nil
    }
    
    func startAnimation(){
        startTimer()
    }
    
    func pauseAnimation(){
        stopTimer()
    }
    
    func resetAnimation(){
        stopTimer()
        toggleAnimation.setTitle("Animation", for: .normal)
        reset.isHidden = true
        imageIndex = 1
        image.image = UIImage(named: "Image/goodnight\(imageIndex)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageIndex = 1
        isAnimating = false
        toggleAnimation.setTitle("Animation",for:.normal)
        toggleAnimation.tintColor = .systemGreen
        reset.isHidden = true
    }


}

