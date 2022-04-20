//
//  ViewController.swift
//  b12DemoGiaoDien2
//
//  Created by Nguyễn Anh Tú on 19/04/2022.
//

import UIKit

class ViewController: UIViewController {

    let logoImage = UIImageView()
    let alertImage = UIImageView()
    let userImage = UIImageView()
    let menuImage = UIImageView()
    
    let containerView = UIView()
    let houseImage = UIImageView()
    
    let label1 = UILabel()
    let label2 = UILabel()
    let startButton = UIButton()
    
    let tempView = UIView()
    
    let label3 = UILabel()
    let label4 = UILabel()
    let searchImage = UIImageView()
    
    let staysLabel = UILabel()
    let flightsLabel = UILabel()
    let carsLabel = UILabel()
    let thingsLabel = UILabel()
    
    let staysButton = UIButton()
    let flightsButton = UIButton()
    let carsButton = UIButton()
    let thingsButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(logoImage)
        view.addSubview(alertImage)
        view.addSubview(userImage)
        view.addSubview(menuImage)
        
        logoImage.image = UIImage(named: "logo")
        logoImage.frame = .init(x: 32, y: 52, width: 70, height: 30)
        logoImage.contentMode = .scaleAspectFill
        
        alertImage.image = UIImage(systemName: "bell")
        alertImage.frame = .init(x: view.frame.maxX-160, y: 52, width: 30, height: 30)
        alertImage.tintColor = .black
        alertImage.layer.opacity = 0.5
        
        userImage.image = UIImage(systemName: "person")
        userImage.frame = .init(x: view.frame.maxX-110, y: 52, width: 30, height: 30)
        userImage.tintColor = .black
        userImage.layer.opacity = 0.5
        
        menuImage.image = UIImage(systemName: "line.3.horizontal")
        menuImage.frame = .init(x: view.frame.maxX-60, y: 52, width: 30, height: 30)
        menuImage.tintColor = .black
        menuImage.layer.opacity = 0.5
        
        view.addSubview(containerView)
        containerView.frame = .init(x: 0, y: 100, width: view.frame.width-20, height: view.frame.height-100-10)
        containerView.center.x = view.center.x
        containerView.backgroundColor = .white
        containerView.clipsToBounds = true
        containerView.layer.cornerRadius = 20
        
        containerView.addSubview(houseImage)
        houseImage.image = UIImage(named: "b12house")
        houseImage.frame = .init(x: 0, y: 0, width: containerView.frame.width, height: containerView.frame.height)
        houseImage.contentMode = .scaleAspectFill
//        houseImage.clipsToBounds = true
//        houseImage.layer.opacity = 0.9
        
        containerView.addSubview(label1)
        label1.text = "Air, sleep, dream"
        label1.frame = .init(x: 0, y: 30, width: 300, height: 150)
        label1.center.x = containerView.bounds.width/2
        label1.numberOfLines = 0
        label1.font = UIFont.boldSystemFont(ofSize: 60)
        label1.textAlignment = .center
        
        containerView.addSubview(label2)
        label2.frame = .init(x: 0, y: label1.frame.maxY+10, width: 300, height: 30)
        label2.center.x = label1.center.x
        label2.text = "Find and book a great experience."
        label2.textAlignment = .center
        
        containerView.addSubview(startButton)
        startButton.frame = .init(x: 0, y: label2.frame.maxY+30, width: 200, height: 50)
        startButton.center.x = label1.center.x
        startButton.backgroundColor = .systemBlue
        startButton.setTitle("Start your search", for: .normal)
        startButton.layer.cornerRadius = 25
        startButton.layer.opacity = 0.7
        
        containerView.addSubview(tempView)
        tempView.frame = .init(x: 0, y: containerView.bounds.height-200, width: containerView.bounds.width-10, height: 195)
        tempView.center.x = label1.center.x
//        tempView.center.x = view.center.x
        tempView.backgroundColor = .white
        tempView.layer.cornerRadius = 20
        
        tempView.addSubview(label3)
        label3.text = "Location"
        label3.frame = .init(x: 20, y: 100, width: 200, height: 40)
        label3.font = UIFont.boldSystemFont(ofSize: 30)
        
        tempView.addSubview(label4)
        label4.text = "Where are you going?"
        label4.frame = .init(x: 20, y: 140, width: 200, height: 30)
//        label4.font = UIFont.boldSystemFont(ofSize: 20)
        label4.layer.opacity = 0.5
        
        tempView.addSubview(searchImage)
        searchImage.frame = .init(x: tempView.frame.width-100, y: 100, width: 80, height: 80)
        searchImage.image = UIImage(systemName: "magnifyingglass.circle.fill")
        
        tempView.addSubview(staysButton)
        tempView.addSubview(staysLabel)
        staysButton.frame = .init(x: 20, y: 0, width: 60, height: 80)
        staysButton.backgroundColor = .lightGray
        staysLabel.frame = .init(x: 20, y: 0, width: 60, height: 78)
        staysLabel.text = "Stays"
        staysLabel.font = UIFont.boldSystemFont(ofSize: 16)
        staysLabel.layer.opacity = 1
        staysLabel.backgroundColor = .white
        staysLabel.textAlignment = .center
        staysButton.addTarget(self, action: #selector(staysAction(_:)), for: .touchUpInside)
        
        tempView.addSubview(flightsButton)
        tempView.addSubview(flightsLabel)
        flightsButton.frame = .init(x: 80, y: 0, width: 80, height: 80)
        flightsLabel.frame = .init(x: 80, y: 0, width: 80, height: 78)
        flightsLabel.text = "Flights"
        flightsLabel.font = UIFont.boldSystemFont(ofSize: 16)
        flightsLabel.layer.opacity = 0.5
        flightsLabel.backgroundColor = .white
        flightsLabel.textAlignment = .center
        flightsButton.addTarget(self, action: #selector(flightsAction(_:)), for: .touchUpInside)
        
        tempView.addSubview(carsButton)
        tempView.addSubview(carsLabel)
        carsButton.frame = .init(x: 160, y: 0, width: 80, height: 80)
        carsLabel.frame = .init(x: 160, y: 0, width: 80, height: 78)
        carsLabel.text = "Cars"
        carsLabel.font = UIFont.boldSystemFont(ofSize: 16)
        carsLabel.layer.opacity = 0.5
        carsLabel.backgroundColor = .white
        carsLabel.textAlignment = .center
        carsButton.addTarget(self, action: #selector(carsAction(_:)), for: .touchUpInside)
        
        tempView.addSubview(thingsButton)
        tempView.addSubview(thingsLabel)
        thingsButton.frame = .init(x: 250, y: 0, width: 120, height: 80)
        thingsLabel.frame = .init(x: 250, y: 0, width: 120, height: 78)
        thingsLabel.text = "Things to do"
        thingsLabel.font = UIFont.boldSystemFont(ofSize: 16)
        thingsLabel.layer.opacity = 0.5
        thingsLabel.backgroundColor = .white
        thingsLabel.textAlignment = .center
        thingsButton.addTarget(self, action: #selector(thingsAction(_:)), for: .touchUpInside)

    }

    @objc func staysAction(_ sender: UIButton) {
        if sender.isSelected == false {
            sender.backgroundColor = .lightGray
            staysLabel.layer.opacity = 1
            flightsLabel.layer.opacity = 0.5
            carsLabel.layer.opacity = 0.5
            thingsLabel.layer.opacity = 0.5
            flightsButton.backgroundColor = .clear
            carsButton.backgroundColor = .clear
            thingsButton.backgroundColor = .clear
        }
    }

    @objc func flightsAction(_ sender: UIButton) {
        if sender.isSelected == false {
            sender.backgroundColor = .lightGray
            flightsLabel.layer.opacity = 1
            staysLabel.layer.opacity = 0.5
            carsLabel.layer.opacity = 0.5
            thingsLabel.layer.opacity = 0.5
            staysButton.backgroundColor = .clear
            carsButton.backgroundColor = .clear
            thingsButton.backgroundColor = .clear
        }
    }
    
    @objc func carsAction(_ sender: UIButton) {
        if sender.isSelected == false {
            sender.backgroundColor = .lightGray
            carsLabel.layer.opacity = 1
            staysLabel.layer.opacity = 0.5
            flightsLabel.layer.opacity = 0.5
            thingsLabel.layer.opacity = 0.5
            staysButton.backgroundColor = .clear
            flightsButton.backgroundColor = .clear
            thingsButton.backgroundColor = .clear
        }
    }
    
    @objc func thingsAction(_ sender: UIButton) {
        if sender.isSelected == false {
            sender.backgroundColor = .lightGray
            thingsLabel.layer.opacity = 1
            staysLabel.layer.opacity = 0.5
            flightsLabel.layer.opacity = 0.5
            carsLabel.layer.opacity = 0.5
            staysButton.backgroundColor = .clear
            flightsButton.backgroundColor = .clear
            carsButton.backgroundColor = .clear
        }
    }
}

