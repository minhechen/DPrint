//
//  ViewController.swift
//  DPrint
//
//  Created by MackChan <minhechen@gmail.com> on 10/27/16.
//  Copyright © 2016 MackChan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        DPrint(message: "Hello world")
        //MARK: USE DPrint in ASYN QUEUE
        let asynQueue = DispatchQueue(label: "DPringQueue")
        asynQueue.async {
            DPrint(message: "asyn queue")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

