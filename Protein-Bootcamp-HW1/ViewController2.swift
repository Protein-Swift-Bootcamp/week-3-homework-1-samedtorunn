//
//  ViewController2.swift
//  Protein-Bootcamp-HW1
//
//  Created by Sam on 25.12.2022.
//

import UIKit

protocol Delegator: AnyObject {
    func saveData(data: String)
}

protocol Delegator2: AnyObject {
    func saveData2(data2: String)
}

protocol Delegator3: AnyObject {
    func saveData3(data3: String)
}

class ViewController2: UIViewController {
    weak var delegate: Delegator?
    weak var delegate2: Delegator2?
    weak var delegate3: Delegator3?
    

    @IBOutlet weak var departmentTextField: UITextField!
    @IBOutlet weak var schoolTextFields: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func savePressed(_ sender: UIButton) {
        let name: String = nameTextField.text ?? "-"
        let school: String = schoolTextFields.text ?? "-"
        let department: String = departmentTextField.text ?? "-"
        
        delegate?.saveData(data: name)
        delegate2?.saveData2(data2: school)
        delegate3?.saveData3(data3: department)
    
        
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
