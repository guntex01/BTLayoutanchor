//
//  ViewController.swift
//  BTLayoutanchor
//
//  Created by guntex01 on 3/6/20.
//  Copyright © 2020 guntex01. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

        let imageView: UIImageView = {
            let imageView = UIImageView()
            imageView.image = UIImage( named: "logo1")
            // imageView.contenMode = .scaleAspectFill
            imageView.frame =  CGRect(x: 0, y: 0, width: 330, height: 200)
            return imageView
        }()
    let tex1 = UITextField()
    let tex2 = UITextField()
    let tex3 = UITextField()
    let tex4 = UITextField()
    let button = UIButton()
    let label = UILabel()
    let button1 = UIButton()
    let stack = UIStackView()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout1()
        settupLayout2()
        setupLayout3()
        setupLayout4()
        setupLayout5()
        dangKyButton()
        
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
        tex1.placeholder = "Họ và tên "
        
        tex1.translatesAutoresizingMaskIntoConstraints = false
        tex1.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20).isActive = true
        tex1.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        tex1.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        tex1.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
    }

    func setupLayout3(){
        tex2.backgroundColor = UIColor.opaqueSeparator
        view.addSubview(tex2)
        tex2.placeholder = "Số điện thoại "
        
        tex2.translatesAutoresizingMaskIntoConstraints = false
        tex2.topAnchor.constraint(equalTo: tex1.bottomAnchor, constant: 20).isActive = true
        tex2.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        tex2.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        tex2.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
    }
    func setupLayout4(){
        tex3.backgroundColor = UIColor.opaqueSeparator
        tex3.placeholder = "Mật khẩu "
        view.addSubview(tex3)
        
        
        tex3.translatesAutoresizingMaskIntoConstraints = false
        tex3.topAnchor.constraint(equalTo: tex2.bottomAnchor, constant: 20).isActive = true
        tex3.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        tex3.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        tex3.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
    }
    func setupLayout5(){
        tex4.backgroundColor = UIColor.opaqueSeparator
        view.addSubview(tex4)
        tex4.placeholder = "Nhập lại mật khẩu "
        
        tex4.translatesAutoresizingMaskIntoConstraints = false
        tex4.topAnchor.constraint(equalTo: tex3.bottomAnchor, constant: 20).isActive = true
        tex4.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        tex4.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        tex4.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
        
    }
    func dangKyButton(){
        button.backgroundColor = UIColor.green
        button.setTitle("Đăng ký", for: .normal)
        view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: tex4.bottomAnchor, constant: 20).isActive = true
        button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
        button.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
        button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor, constant: 0).isActive = true
    }
    func stackVew(){
        
        
    }
}

