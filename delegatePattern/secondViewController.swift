//
//  secondViewController.swift
//  delegatePattern
//
//  Created by Maruf Khan on 7/9/21.
//

import UIKit

protocol sideSelectionDelegate {
    func didTapBtn(name: String, color : UIColor, image : UIImage)
}

class secondViewController: UIViewController {
    
    var selectionScreenDelegate: sideSelectionDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func btnA(_ sender: Any) {
        selectionScreenDelegate?.didTapBtn(name: "You chose A", color: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), image: UIImage(named: "A.jpg")!)
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func btnB(_ sender: Any) {
        selectionScreenDelegate?.didTapBtn(name: "You chose B", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), image: UIImage(named: "B.jpg")!)
        dismiss(animated: true, completion: nil)
    }
}
