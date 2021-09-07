//
//  ViewController.swift
//  delegatePattern
//
//  Created by Maruf Khan on 7/9/21.
//

import UIKit

class ViewController: UIViewController{

    
    @IBOutlet weak var image1: UIImageView!

    @IBOutlet weak var chooseBtn: UIButton!
    @IBOutlet weak var lbl2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func choose(_ sender: Any) {
        
        let secondVC = storyboard?.instantiateViewController(withIdentifier: "secondViewController") as! secondViewController
        secondVC.selectionScreenDelegate = self
        present(secondVC, animated: true, completion: nil)
        
    }

}

extension ViewController: sideSelectionDelegate{
    func didTapBtn(name: String, color: UIColor, image: UIImage) {
        lbl2.text = name
        image1.image = image
        view.backgroundColor = color
    }
}
