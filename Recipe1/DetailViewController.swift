//
//  DetailViewController.swift
//  Recipe1
//
//  Created by Sarah Lee on 3/6/21.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var recipeContent: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        recipeContent.backgroundColor = UIColor.black.withAlphaComponent(0.2)

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
