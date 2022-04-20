//
//  ViewController.swift
//  b12BallRun
//
//  Created by Nguyễn Anh Tú on 19/04/2022.
//

import UIKit

class ViewController: UIViewController {
    
    let ballView: UIView = UIView()
    var timer: Timer!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(ballView)
        ballView.frame = .init(x: 0, y: 0, width: 100, height: 100)
        ballView.layer.cornerRadius = 50
        ballView.backgroundColor = .systemOrange
        
//        print(self.ballView.frame.origin.x)
//        print(self.ballView.frame.origin.y)
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: { _ in
            self.ballView.frame.origin.x += 1
            self.ballView.frame.origin.y += 1*(self.view.frame.height-100)/(self.view.frame.width-100)
            
            print(self.ballView.frame.origin.x)
            print(self.ballView.frame.origin.y)

            if self.ballView.frame.maxX >= self.view.frame.maxX || self.ballView.frame.maxY >= self.view.frame.maxY {
                self.timer.invalidate()
            }
        })
        

    }


}

