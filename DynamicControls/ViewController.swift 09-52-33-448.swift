//
//  ViewController.swift
//  DynamicControls
//
//  Created by R93 on 01/01/18.
//

import UIKit

class ViewController: UIViewController {
    
    var nameLabel: UILabel!
    var addressLabel: UILabel!
    var submitButton: UIButton!
    var sabView: UIView!
    var funSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    private func setup(){
        configurenameLabel(with: "Hello")
        configureaddressLabel(with: "243, Shiv Darshan Society, Yogi Chowk, Puna Gam, Surat")
        configuresubmitButton(with: "Submit")
        configuresabView()
    }

    private func configurenameLabel(with text: String){
        nameLabel = getNameLabel(text: text)
        view.addSubview(nameLabel)
    }
    
    private func getNameLabel(text: String) -> UILabel{
        
        let nameLabel: UILabel = UILabel(frame:CGRect(x: 12 , y: 58, width: view.frame.width-32, height: 50))
        nameLabel.backgroundColor = .gray
        nameLabel.textColor = .white
        nameLabel.numberOfLines = 3
        nameLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        nameLabel.text = text
        nameLabel.textAlignment = .center
        return nameLabel
    }
    
    private func configureaddressLabel(with text: String){
        addressLabel = getaddressLabel(text: text)
        view.addSubview(addressLabel)
    }
    
    private func getaddressLabel(text: String) -> UILabel{
        
        let addressLabel: UILabel = UILabel(frame:CGRect(x: 12 , y: 126, width: view.frame.width-32, height: 50))
        addressLabel.backgroundColor = .gray
        addressLabel.textColor = .white
        addressLabel.numberOfLines = 3
        addressLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        addressLabel.text = text
        addressLabel.textAlignment = .center
        return addressLabel
    }
    
    private func configuresubmitButton(with title: String){
        submitButton = getsubmitButton(title: title)
        view.addSubview(submitButton)
    }
    
    private func getsubmitButton(title: String) -> UIButton{
        
        let submitButton: UIButton = UIButton(frame:CGRect(x: 12 , y: 226, width: view.frame.width-32, height: 50))
        submitButton.setTitle(title, for: .normal)
        submitButton.backgroundColor = UIColor.cyan
        submitButton.setTitleColor(.white, for: .normal)
        submitButton.titleLabel?.textAlignment = .center
        submitButton.titleLabel?.font = UIFont.systemFont(ofSize: 23, weight: .bold)
        submitButton.layer.cornerRadius = 8
        submitButton.layer.masksToBounds = true
        submitButton.tag = 1
        return submitButton
    }
    
    private func configuresabView(){
        sabView = getsabView()
        view.addSubview(sabView)
    }
    
    private func getsabView() -> UIView{
        
        let sabView: UIView = UIView(frame:CGRect(x: 12 , y: 296, width: view.frame.width-32, height: 120))
        sabView.backgroundColor = .red
        sabView.layer.cornerRadius = 8
        sabView.layer.masksToBounds = true
        return sabView
    }
    
    private func getfunSwitch() -> UISwitch{
        
        let funSwitch: UISwitch = UISwitch(frame:CGRect(x: 16 , y: 8, width: 49, height: 31))
        
        return funSwitch
    }
}



