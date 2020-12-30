//
//  ViewController.swift
//  Turntable
//
//  Created by NDHU_CSIE on 2020/12/30.
//  Copyright © 2020 NDHU_CSIE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wheelImage: WheelImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func clickRotateWheel(_ sender:Any){
        wheelImage.rotataeGraduslly{ result in
            let alerContoller = UIAlertController(title: "你轉到了\(result)區塊", message: nil, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "確認", style: .cancel, handler: nil)
            alerContoller.addAction(okAction)
            self.present(alerContoller,animated: true)
        }
    }


}

