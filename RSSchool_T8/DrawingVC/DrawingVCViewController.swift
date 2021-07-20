//
//  DrawingVCViewController.swift
//  RSSchool_T8
//
//  Created by Артем Стратиенко on 20.07.2021.
//

import UIKit



@objc class DrawingVCViewController: UIViewController {

    @objc static var arrayDrawIndex : Int = 1
    var shemaPlanet = UIButton(type: .system)
    let shemaHead = UIButton(type: .system)
    let shemaTree = UIButton(type: .system)
    let shemaLandscape = UIButton(type: .system)
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDrawingVC()

        // Do any additional setup after loading the view.
    }
    func setupDrawingVC() {
        // shemaPlanet button
        shemaPlanet.frame = CGRect(x: self.view.center.x/2, y: self.view.frame.height - ( self.view.frame.height - 114 ), width: 200, height: 40)
        shemaPlanet.setTitle("Planet", for: .normal)
        shemaPlanet.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        shemaPlanet.tintColor = #colorLiteral(red: 0.1294117647, green: 0.6901960784, blue: 0.5568627451, alpha: 1)
        shemaPlanet.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        shemaPlanet.layer.cornerRadius = 10
        // shadow layer
        shemaPlanet.layer.shadowOpacity = 1
        shemaPlanet.layer.shadowRadius = 1
        shemaPlanet.layer.shadowColor = #colorLiteral(red: 0.003921568627, green: 0.003921568627, blue: 0.003921568627, alpha: 1)
        shemaPlanet.layer.shadowOffset = CGSize(width: 0, height: 0)
        shemaPlanet.tag = 0
        self.view.addSubview(shemaPlanet)
        shemaPlanet.addTarget(self, action: #selector(self.setPlanet(_:)), for: .touchUpInside)
        // shemaHead button
        shemaHead.frame = CGRect(x: self.view.center.x/2, y: self.shemaPlanet.center.y + self.shemaPlanet.frame.height + 15, width: 200, height: 40)
        shemaHead.setTitle("Head", for: .normal)
        shemaHead.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        shemaHead.tintColor = #colorLiteral(red: 0.1294117647, green: 0.6901960784, blue: 0.5568627451, alpha: 1)
        shemaHead.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        shemaHead.layer.cornerRadius = 10
        // selected state
        shemaHead.setTitleColor(.white, for: .selected)
        // shadow layer
        shemaHead.layer.shadowOpacity = 1
        shemaHead.layer.shadowRadius = 1
        shemaHead.layer.shadowColor = #colorLiteral(red: 0.003921568627, green: 0.003921568627, blue: 0.003921568627, alpha: 1)
        shemaHead.layer.shadowOffset = CGSize(width: 0, height: 0)
        shemaHead.tag = 1
        self.view.addSubview(shemaHead)
        shemaHead.addTarget(self, action: #selector(self.setPlanet(_:)), for: .touchUpInside)
        // shemaTree button
        shemaTree.frame = CGRect(x: self.view.center.x/2, y: self.shemaHead.center.y + self.shemaHead.frame.height + 15, width: 200, height: 40)
        shemaTree.setTitle("Tree", for: .normal)
        shemaTree.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        shemaTree.tintColor = #colorLiteral(red: 0.1294117647, green: 0.6901960784, blue: 0.5568627451, alpha: 1)
        shemaTree.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        shemaTree.layer.cornerRadius = 10
        // shadow layer
        shemaTree.layer.shadowOpacity = 1
        shemaTree.layer.shadowRadius = 1
        shemaTree.layer.shadowColor = #colorLiteral(red: 0.003921568627, green: 0.003921568627, blue: 0.003921568627, alpha: 1)
        shemaTree.layer.shadowOffset = CGSize(width: 0, height: 0)
        shemaTree.tag = 2
        self.view.addSubview(shemaTree)
        shemaTree.addTarget(self, action: #selector(self.setPlanet(_:)), for: .touchUpInside)
        // shemaLandscape button
        shemaLandscape.frame = CGRect(x: self.view.center.x/2, y: self.shemaTree.center.y + self.shemaTree.frame.height + 15, width: 200, height: 40)
        shemaLandscape.setTitle("Landscape", for: .normal)
        shemaLandscape.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        shemaLandscape.tintColor = #colorLiteral(red: 0.1294117647, green: 0.6901960784, blue: 0.5568627451, alpha: 1)
        shemaLandscape.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        shemaLandscape.layer.cornerRadius = 10
        // shadow layer
        shemaLandscape.layer.shadowOpacity = 1
        shemaLandscape.layer.shadowRadius = 1
        shemaLandscape.layer.shadowColor = #colorLiteral(red: 0.003921568627, green: 0.003921568627, blue: 0.003921568627, alpha: 1)
        shemaLandscape.layer.shadowOffset = CGSize(width: 0, height: 0)
        shemaLandscape.tag = 3
        self.view.addSubview(shemaLandscape)
        shemaLandscape.addTarget(self, action: #selector(self.setPlanet(_:)), for: .touchUpInside)
    }
    @objc func setPlanet(_ sender:UIButton) {
        let senders = [ 0,1,2,3]
        let nonSelected = senders.filter ( {
            $0 != sender.tag
        })
        sender.layer.shadowColor = #colorLiteral(red: 0.1294117647, green: 0.6901960784, blue: 0.5568627451, alpha: 1)
        DrawingVCViewController.arrayDrawIndex = sender.tag
        nonSelected.map({
            switch $0 {
            case 0:
                shemaPlanet.layer.shadowColor = #colorLiteral(red: 0.003921568627, green: 0.003921568627, blue: 0.003921568627, alpha: 1)
            case 1:
                shemaHead.layer.shadowColor = #colorLiteral(red: 0.003921568627, green: 0.003921568627, blue: 0.003921568627, alpha: 1)
            case 2:
                shemaTree.layer.shadowColor = #colorLiteral(red: 0.003921568627, green: 0.003921568627, blue: 0.003921568627, alpha: 1)
            case 3:
                shemaLandscape.layer.shadowColor = #colorLiteral(red: 0.003921568627, green: 0.003921568627, blue: 0.003921568627, alpha: 1)
            default:
                print("")
            }
        })
        //dismiss(animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
