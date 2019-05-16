//
//  ViewController.swift
//  MMTappableView
//
//  Created by Muthuraj Muthulingam on 05/12/2019.
//  Copyright (c) 2019 Muthuraj Muthulingam. All rights reserved.
//

import UIKit
import MMTappableView

class ViewController: UIViewController {

    @IBOutlet weak var tappableView: MMTappableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tappableView.delegate = self
        tappableView.isTappable = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: MMTappableViewDelegates {
    func mmTappableView(_ view: MMTappableView, didGenerateEvent event: MMTappableViewEvent) {
        debugPrint("Generated Event: \(event)")
    }
}

