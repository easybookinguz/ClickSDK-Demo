//
//  ViewController.swift
//  ClickSDKDemo
//
//  Created by EasyBooking on 5/29/20.
//  Copyright © 2020 Atlanta Air Travel. All rights reserved.
//

import UIKit
import ClickSDK

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var payButton: UIButton!
    var isBool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: "faceblue")
        
        payButton.backgroundColor = .link
        payButton.setTitleColor(.white, for: .normal)
        payButton.layer.cornerRadius = 8
        payButton.clipsToBounds = true
        
    }
    
    @IBAction func onClickPayButton() {
        let config = ClickMerchantConfig(
                amount: 1000.0,
                serviceId: 12356,
                merchantId: 12356,
                merchantUserId: 12356,
                paymentOption: "",
                communalParam: "",
                transactionParam: ""
            )
        ClickSDKService(config: config).setup()
    }

}

