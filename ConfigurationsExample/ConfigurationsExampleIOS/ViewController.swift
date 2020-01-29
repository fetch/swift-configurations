//
//  ViewController.swift
//  ConfigurationsExampleIOS
//
//  Created by Koen Punt on 16/02/16.
//  Copyright © 2016 Fetch! B.V. All rights reserved.
//

import UIKit
import Configurations

class ViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let configuration = Configuration.current
        
        self.greetingLabel.text = configuration["Greeting"]!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

