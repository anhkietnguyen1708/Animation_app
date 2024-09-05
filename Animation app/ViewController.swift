//
//  ViewController.swift
//  Animation app
//
//  Created by Nguyễn Anh Kiệt on 3/9/24.
//

import UIKit

class ViewController: UIViewController {
    var imageIndex:Int = 1
    
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
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageIndex = 1
        updateImg()
    }


}

