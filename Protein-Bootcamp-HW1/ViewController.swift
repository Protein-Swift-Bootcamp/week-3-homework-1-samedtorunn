//
//  ViewController.swift
//  Protein-Bootcamp-HW1
//
//  Created by Sam on 25.12.2022.
//
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var name: UILabel!
    //var delegate: DataDelegate?
    @IBOutlet weak var departmentLabel: UILabel!
    
    @IBOutlet weak var schoolLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "viewcontroller2") as! ViewController2
        
        vc.delegate = self
        vc.delegate2 = self
        vc.delegate3 = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

extension ViewController: Delegator  {
    func saveData(data: String) {
        name.text = data
    }
}
extension ViewController: Delegator2  {
    func saveData2(data2: String) {
        schoolLabel.text = data2
    }
}
extension ViewController: Delegator3 {
    func saveData3(data3: String) {
        departmentLabel.text = data3
    }
}


//@IBOutlet weak var dataButton: UIButton!
//
//@IBAction func buttonIsPressed(_ sender: UIButton) {
//    let secondVC = ViewController2()
//    secondVC.delegate = self
//    delegate?.sendData(data: "This data will be sent to VC2 and will be printed")
//}
