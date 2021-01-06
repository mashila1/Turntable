//
//  ViewController.swift
//  Turntable
//
//  Created by NDHU_CSIE on 2020/12/30.
//  Copyright © 2020 NDHU_CSIE. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    // https://www.youtube.com/watch?v=YcInZDfVYbw
    @IBOutlet weak var wheelImage: WheelImageView!
    @IBOutlet weak var youwantoeatImage: UIImageView!
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var youwantoeatImagechinese: UIImageView!
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        youwantoeatImage.image = UIImage(named: "1.jpg")
        youwantoeatImagechinese.image = UIImage(named: "2.jpg")
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background")!)
        // Do any additional setup after loading the view.
        let url = URL(string: "https://www.youtube.com/embed/watch?v=YcInZDfVYbw?loop=1&playlist=YcInZDfVYbw")!
        let request = URLRequest(url: url)
        webView.load(request)
        
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

