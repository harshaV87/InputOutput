//
//  ViewController.swift
//  InputOutput
//
//  Created by Venkata harsha Balla on 7/21/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      setUpView()
    }
    
    
    // MARK: UI for removeRepeatingCharacters function
    
    private var RepeatAlgoTextField : UITextField = {
            let TextField = UITextField()
            TextField.placeholder = "Enter your input here"
            TextField.translatesAutoresizingMaskIntoConstraints = false
            TextField.borderStyle = .roundedRect
            return TextField
        }()

    private let RepeatAlgoConvertButton : UIButton = {
        let Button = UIButton (type: .system)
        Button.setTitle("Convert", for: .normal)
        Button.tintColor = .white
        Button.backgroundColor = .blue
        Button.layer.cornerRadius = 5
        Button.clipsToBounds = true
        Button.translatesAutoresizingMaskIntoConstraints = false
        Button.addTarget(self, action: #selector(repeatAlgoButtonPressed), for: .touchUpInside)
            return Button
        }()
    
    private let RepeatAlgoHeadingLabel : UILabel = {
            let Label = UILabel()
            Label.translatesAutoresizingMaskIntoConstraints = false
            Label.numberOfLines = 0
            Label.textAlignment = .center
            Label.backgroundColor = .blue
        Label.text = "RemoveRepeatingCharacters"
        Label.textColor = .white
        Label.layer.cornerRadius = 5
        Label.clipsToBounds = true
            return Label
        }()
    
    private let RepeatAlgoOutPutLabel : UILabel = {
            let Label = UILabel()
            Label.translatesAutoresizingMaskIntoConstraints = false
            Label.numberOfLines = 0
            Label.textAlignment = .center
            Label.backgroundColor = .lightGray
        Label.textColor = .black
            return Label
        }()
    
    // MARK: UI for findDirectoryPath function

    private var DirectoryAlgoTextField : UITextField = {
            let TextField = UITextField()
            TextField.placeholder = "Enter your directory input here"
            TextField.translatesAutoresizingMaskIntoConstraints = false
            TextField.borderStyle = .roundedRect
            return TextField
        }()
    
    private var CommandAlgoTextField : UITextField = {
            let TextField = UITextField()
            TextField.placeholder = "Enter your command input here"
            TextField.translatesAutoresizingMaskIntoConstraints = false
            TextField.borderStyle = .roundedRect
            return TextField
        }()

    private let DirectoryAlgoConvertButton : UIButton = {
        let Button = UIButton (type: .system)
        Button.setTitle("Convert", for: .normal)
        Button.tintColor = .white
        Button.backgroundColor = .blue
        Button.layer.cornerRadius = 5
        Button.clipsToBounds = true
        Button.translatesAutoresizingMaskIntoConstraints = false
        Button.addTarget(self, action: #selector(directoryAlgoButtonPressed), for: .touchUpInside)
            return Button
        }()
    
    private let DirectoryAlgoHeadingLabel : UILabel = {
        let Label = UILabel()
        Label.translatesAutoresizingMaskIntoConstraints = false
        Label.numberOfLines = 0
        Label.textAlignment = .center
        Label.backgroundColor = .blue
    Label.text = "FindDirectoryPath"
    Label.textColor = .white
    Label.layer.cornerRadius = 5
    Label.clipsToBounds = true
        return Label
        }()
    
    private let DirectoryAlgoOutPutLabel : UILabel = {
            let Label = UILabel()
            Label.translatesAutoresizingMaskIntoConstraints = false
            Label.numberOfLines = 0
            Label.textAlignment = .center
            Label.backgroundColor = .lightGray
        Label.textColor = .black
            return Label
        }()
    
    
    func setUpView() {
        
        view.addSubview(RepeatAlgoHeadingLabel)
        view.addSubview(RepeatAlgoTextField)
        view.addSubview(RepeatAlgoConvertButton)
        view.addSubview(RepeatAlgoOutPutLabel)
        
        RepeatAlgoHeadingLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        RepeatAlgoHeadingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 3).isActive = true
        RepeatAlgoHeadingLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -3).isActive = true
        RepeatAlgoHeadingLabel.heightAnchor.constraint(equalToConstant: 44).isActive = true
        RepeatAlgoTextField.topAnchor.constraint(equalTo: RepeatAlgoHeadingLabel.bottomAnchor, constant: 15).isActive = true
        RepeatAlgoTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        RepeatAlgoTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        RepeatAlgoTextField.heightAnchor.constraint(equalToConstant: 44).isActive = true
        RepeatAlgoConvertButton.topAnchor.constraint(equalTo: RepeatAlgoTextField.bottomAnchor, constant: 15).isActive = true
        RepeatAlgoConvertButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        RepeatAlgoConvertButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        RepeatAlgoConvertButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        RepeatAlgoOutPutLabel.topAnchor.constraint(equalTo: RepeatAlgoConvertButton.bottomAnchor, constant: 15).isActive = true
        RepeatAlgoOutPutLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        RepeatAlgoOutPutLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        RepeatAlgoOutPutLabel.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        view.addSubview(DirectoryAlgoHeadingLabel)
        view.addSubview(DirectoryAlgoTextField)
        view.addSubview(DirectoryAlgoConvertButton)
        view.addSubview(DirectoryAlgoOutPutLabel)
        view.addSubview(CommandAlgoTextField)
        
        DirectoryAlgoHeadingLabel.topAnchor.constraint(equalTo: RepeatAlgoOutPutLabel.bottomAnchor, constant: 15).isActive = true
        DirectoryAlgoHeadingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 3).isActive = true
        DirectoryAlgoHeadingLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -3).isActive = true
        DirectoryAlgoHeadingLabel.heightAnchor.constraint(equalToConstant: 44).isActive = true
        DirectoryAlgoTextField.topAnchor.constraint(equalTo: DirectoryAlgoHeadingLabel.bottomAnchor, constant: 15).isActive = true
        DirectoryAlgoTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        DirectoryAlgoTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        DirectoryAlgoTextField.heightAnchor.constraint(equalToConstant: 44).isActive = true
        CommandAlgoTextField.topAnchor.constraint(equalTo: DirectoryAlgoTextField.bottomAnchor, constant: 15).isActive = true
        CommandAlgoTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        CommandAlgoTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        CommandAlgoTextField.heightAnchor.constraint(equalToConstant: 44).isActive = true
        DirectoryAlgoConvertButton.topAnchor.constraint(equalTo: CommandAlgoTextField.bottomAnchor, constant: 15).isActive = true
        DirectoryAlgoConvertButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30).isActive = true
        DirectoryAlgoConvertButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30).isActive = true
        DirectoryAlgoConvertButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        DirectoryAlgoOutPutLabel.topAnchor.constraint(equalTo: DirectoryAlgoConvertButton.bottomAnchor, constant: 15).isActive = true
        DirectoryAlgoOutPutLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        DirectoryAlgoOutPutLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        DirectoryAlgoOutPutLabel.heightAnchor.constraint(equalToConstant: 44).isActive = true
    }
}

extension ViewController {
    
    @objc func repeatAlgoButtonPressed() {
        if RepeatAlgoTextField.text != "" {
            RepeatAlgoOutPutLabel.text = Calculation.removeRepeatingCharacters(RepeatAlgoTextField.text!)
        }
    }
    
    @objc func directoryAlgoButtonPressed() {
        if DirectoryAlgoTextField.text != "" && CommandAlgoTextField.text != ""{
            DirectoryAlgoOutPutLabel.text = Calculation.findDirectoryPath(DirectoryAlgoTextField.text!, command: CommandAlgoTextField.text!)
        }
    }
}
