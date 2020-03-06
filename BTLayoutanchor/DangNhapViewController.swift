//
//  DangNhapViewController.swift
//  BTLayoutanchor
//
//  Created by guntex01 on 3/6/20.
//  Copyright © 2020 guntex01. All rights reserved.
//

import UIKit

class DangNhapViewController: UIViewController {
    let imageView: UIImageView = {
               let imageView = UIImageView()
               imageView.image = UIImage( named: "logo1")
               // imageView.contenMode = .scaleAspectFill
               imageView.frame =  CGRect(x: 0, y: 0, width: 330, height: 200)
               return imageView
           }()
       let tex1 = UITextField()
       let tex2 = UITextField()
       let button = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout1()
        settupLayout2()
        setupLayout3()
        dangNhapButton()
        
        
        
        
    }
    func setupLayout1(){
           view.addSubview(imageView)
           
           imageView.translatesAutoresizingMaskIntoConstraints = false
           imageView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 20).isActive = true
           imageView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
           imageView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier:0.5 ,  constant: 0).isActive = true
           imageView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.2, constant: 0).isActive = true
       }
       func settupLayout2(){
           tex1.backgroundColor = UIColor.opaqueSeparator
           view.addSubview(tex1)
           tex1.placeholder = "Nhập số điện thoại "
           
           tex1.translatesAutoresizingMaskIntoConstraints = false
           tex1.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20).isActive = true
           tex1.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
           tex1.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
           tex1.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
       }

       func setupLayout3(){
           tex2.backgroundColor = UIColor.opaqueSeparator
           view.addSubview(tex2)
           tex2.placeholder = "Mật khẩu "
           
           tex2.translatesAutoresizingMaskIntoConstraints = false
           tex2.topAnchor.constraint(equalTo: tex1.bottomAnchor, constant: 20).isActive = true
           tex2.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
           tex2.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
           tex2.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
       }
    func dangNhapButton(){
        button.backgroundColor = UIColor.green
        view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: tex2.bottomAnchor, constant: 20).isActive = true
        button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        button.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
    }
    

}
