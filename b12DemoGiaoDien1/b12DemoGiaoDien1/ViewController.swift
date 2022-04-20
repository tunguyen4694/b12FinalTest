//
//  ViewController.swift
//  b12DemoGiaoDien1
//
//  Created by Nguyễn Anh Tú on 19/04/2022.
//

import UIKit

class ViewController: UIViewController {
    
    let label = UILabel()
    let containerView = UIView()
    let intTextFile = UITextField()
    let clickButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(label)
        label.frame = .init(x: 0, y: 100, width: 300, height: 120)
        label.center.x = view.center.x
        label.text = "Máy Tính Giai Thừa"
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 30)

        view.addSubview(containerView)
        containerView.frame = .init(x: 0, y: 350, width: 300, height: 80)
        containerView.center.x = view.center.x
        
//        containerView.backgroundColor = .systemOrange
        containerView.layer.borderColor = UIColor.lightGray.cgColor
        containerView.layer.borderWidth = 1
        containerView.clipsToBounds = true
        containerView.layer.cornerRadius = 40
        containerView.layer.opacity = 0.8
        
        containerView.addSubview(intTextFile)
        intTextFile.frame = .init(x: 30, y: 0, width: 200, height: 50)
        intTextFile.center.y = containerView.frame.height/2
        intTextFile.placeholder = "Nhập vào số bất kì"
        intTextFile.keyboardType = .numberPad
        
        view.addSubview(clickButton)
        clickButton.frame = .init(x: 0, y: containerView.frame.maxY+30, width: 100, height: 50)
        clickButton.center.x = view.center.x
        clickButton.backgroundColor = .systemBlue
        clickButton.setTitle("Kết quả", for: .normal)
        clickButton.layer.cornerRadius = 25
        
        clickButton.addTarget(self, action: #selector(showAlert(_:)), for: .touchUpInside)
    }

    @objc func showAlert(_ sender: UIButton) {
        
        var alert = UIAlertController()
        var giaiThua = 1
        let n = Int(intTextFile.text ?? "") ?? 0
        
        if n > 0 {
            for i in 1...n {
                giaiThua *= i
                alert = UIAlertController(title: "Giai thừa của \(n)", message: "n! = \(n)! = \(giaiThua)", preferredStyle: .alert)
            }
        } else if n == 0 {
            alert = UIAlertController(title: "Giai thừa của \(n)", message: "n! = \(n)! = 1", preferredStyle: .alert)
        } else {
            alert = UIAlertController(title: "Lỗi", message: "Q. Không có giai thừa só âm", preferredStyle: .alert)
        }
        
        let okAction = UIAlertAction(title: "Ok", style: .default)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        present(alert, animated: true, completion: nil)
    }

}

