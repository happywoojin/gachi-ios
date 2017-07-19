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
        
        let session: KOSession = KOSession.shared();
        
        if session.isOpen() {
            session.close()
        }
        
        session.presentingViewController = self.navigationController
        session.open(completionHandler: { (error) -> Void in
            session.presentingViewController = nil
            
            if !session.isOpen() {
                switch ((error as! NSError).code) {
                case Int(KOErrorCancelled.rawValue):
                    break;
                default:
                    self.displayAlert(nil, message: "에러가 발생하였습니다.")
                    break;
                }
            }
            }, authParams: nil, authTypes: [NSNumber(value: KOAuthType.talk.rawValue), NSNumber(value: KOAuthType.account.rawValue)])
    }
    
    
    func displayAlert(_ title: String?, message: String) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "확인", style: .default, handler: nil)
        let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        
        alertController.addAction(okAction)
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil)
    }


}

