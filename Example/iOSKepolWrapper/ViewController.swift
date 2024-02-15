//
//  ViewController.swift
//  iOSKepolWrapper
//
//  Created by befstrat1969 on 02/02/2024.
//  Copyright (c) 2024 befstrat1969. All rights reserved.
//

import UIKit
import iOSKepolWrapper


class ViewController: UIViewController {
    
    let kepol = iOSKepolWrapper()
    let t = Test()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        kepol.listener = self
        let n = t.testName()
        
    
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTest(_:Any){
        let a = kepol.SearchLocker()
    }

}

extension ViewController:iOSKepolListener{
    
    func OnKepolLockerSearchFound(){
        
    }
    
    func OnKepolLockerSearchFailed(_ actionFailed: String){
        
    }
    
}

