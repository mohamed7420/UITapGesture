//
//  ViewController.swift
//  UITapGesture
//
//  Created by Mohamed on 8/20/19.
//  Copyright © 2019 Mohamed74. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageMohamed: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // one tap on image
        
        
        imageMohamed.isUserInteractionEnabled = true
        
        imageMohamed.addGestureRecognizer(UILongPressGestureRecognizer(target: self, action: #selector(self.handleLongTap)))
        
////        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleImageTapGesture(recognizer:)))
////        tapGesture.numberOfTapsRequired = 1
//        imageMohamed.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleImageTapGesture(recognizer:))))
    }
    
    
    @objc func handleImageTapGesture(recognizer : UITapGestureRecognizer){
        
        if imageMohamed.image == UIImage(named: "mohamed"){
            
            imageMohamed.image = UIImage(named: "screen")
            
        }else if imageMohamed.image == UIImage(named: "screen") {
            
            imageMohamed.image = UIImage(named: "mohamed")
        }
        
    }
    
    @objc func handleLongTap(){
        
        print("Long Tap is success")
        
    }
    
    
    


}

