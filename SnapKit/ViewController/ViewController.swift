//
//  ViewController.swift
//  SnapKit
//
//  Created by Mac on 8/14/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit
import SnapKit


class ViewController: UIViewController {
   
    let mainView : UIView = {
        let view = UIView()
        view.backgroundColor    = UIColor(white: 0.6, alpha: 0.8)
        view.layer.cornerRadius = 10
        return view
    }()
    
    let subView : UIView = {
        let view = UIView()
        view.backgroundColor    = UIColor(white: 0.2, alpha: 0.8)
        view.layer.cornerRadius = 10
        return view
    }()
    
    
    let topView : UIView = {
        let view = UIView()
        view.backgroundColor    = .red
        view.layer.cornerRadius = 10
        return view
    }()
    
    
    let bottomView : UIView = {
        let view = UIView()
        view.backgroundColor    = .green
        view.layer.cornerRadius = 10
        return view
    }()
    
    
    lazy var mainStackView : UIStackView = {
        let stackView = UIStackView()
        stackView.addArrangedSubview(topView)
        stackView.addArrangedSubview(bottomView)
        stackView.axis          = .vertical
        stackView.distribution  = .fillEqually
        stackView.spacing       = 20

        return stackView
    }()
    


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
        setupUIView()
    }
    func setupUI(){
        self.view.backgroundColor = .white
        title = "SnapKit Exmple"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    func setupUIView(){
        self.view.addSubview(mainView)
        self.mainView.addSubview(subView)
        
        self.subView.addSubview(mainStackView)
        
        self.mainView.snp.makeConstraints{ (make) -> Void in
            make.topMargin.equalTo(20)
            make.rightMargin.equalTo(-20)
            make.bottomMargin.equalTo(-20)
            make.leftMargin.equalTo(20)
        }
        
        self.subView.snp.makeConstraints(){
            (subview) -> Void in
            subview.width.height.equalTo(400)
            subview.center.equalTo(self.mainView)
        }
        self.mainStackView.snp.makeConstraints(){
            (mainStack) ->Void in
            mainStack.top.left.equalTo(20)
            mainStack.right.bottom.equalTo(-20)
        }
    }
    


}



