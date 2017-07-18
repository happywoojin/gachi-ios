//
//  ViewController.swift
//  Gachi
//
//  Created by Woojin Kim on 2017. 7. 19..
//  Copyright © 2017년 Woojin Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //깃허브 어려워용

    
    @IBOutlet var testLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func clickedKakaoLogin(_ sender: UIButton) {
        
        testLabel.text = "카카오톡 로그인 클릭"
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

