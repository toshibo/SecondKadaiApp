//
//  GreetingViewController.swift
//  SecondKadaiApp
//
//  Created by Toshi Fujita on 2018/04/08.
//  Copyright © 2018年 toshibo. All rights reserved.
//

import UIKit

class GreetingViewController: UIViewController {

    // 受け取るためのプロパティ
    var name:String = ""
    @IBOutlet weak var greetingTextLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingTextLabel.text = "こんにちは、\(self.name)さん"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
