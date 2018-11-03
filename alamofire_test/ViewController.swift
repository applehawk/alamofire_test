//
//  ViewController.swift
//  alamofire_test
//
//  Created by macbook on 11/2/18.
//  Copyright © 2018 macbook. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let request = Alamofire.request("https://httpbin.org/get").responseJSON(completionHandler: { response in
            print(response.value)
            
            //to get JSON return value
            guard let result = response.result.value else {
                print("Response failed")
                return
            }
            let JSON = result as! NSDictionary
            print(JSON)
        })
    }
}

