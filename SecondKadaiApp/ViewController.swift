//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by Toshi Fujita on 2018/04/08.
//  Copyright © 2018年 toshibo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のgreetingViewControllerを取得する
        let greetingViewController = segue.destination as! GreetingViewController
        greetingViewController.name = nameField.text!
    }

    @IBAction func handleNameButton(_ sender: Any) {
        if nameField.text!.isEmpty {
            let alert = UIAlertController(title: "名前が未入力です。", message: "名前を入力してください。", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
                NSLog("The \"OK\" alert occured.")
            }))
            self.present(alert, animated: true, completion: nil)
            return
        }
    }
    
    // 他の画面からsegueを使って戻ってきたときに呼ばれる
    @IBAction func unwind(_ segue: UIStoryboardSegue){
        
    }
    

}

