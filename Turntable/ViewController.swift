//
//  ViewController.swift
//  Turntable
//
//  Created by NDHU_CSIE on 2020/12/30.
//  Copyright © 2020 NDHU_CSIE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // https://www.itdaan.com/tw/e0b5c42162b6c6d9298fd4e2ef2ba9a5
    @IBOutlet weak var wheelImage: WheelImageView!
    @IBOutlet weak var youwantoeatImage: UIImageView!
    @IBOutlet weak var youwantoeatImagechinese: UIImageView!
    override func viewDidLoad() {
        youwantoeatImage.image = UIImage(named: "1.jpg")
        youwantoeatImagechinese.image = UIImage(named: "2.jpg")
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func clickRotateWheel(_ sender:Any){
        print("123")
        wheelImage.rotataeGraduslly{ result in
            let alerContoller = UIAlertController(title: "你轉到了\(result)區塊", message: nil, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "確認", style: .cancel, handler: nil)
            alerContoller.addAction(okAction)
            self.present(alerContoller,animated: true)
        }
    }


}

