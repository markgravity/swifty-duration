//
//  ViewController.swift
//  SwiftyDuration
//
//  Created by markgravity on 04/06/2020.
//  Copyright (c) 2020 markgravity. All rights reserved.
//

import UIKit
import SwiftyDuration

class ViewController: UIViewController {
    var timer: Timer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let duration = Duration(seconds: 2)
        
        
        fakeDuration(elapse: Duration(seconds: 1)) {
            print(Date())
//            Timer.scheduledTimer(withTimeInterval: duration.inSeconds, repeats: false) { _ in
//                print(Date())
//            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

