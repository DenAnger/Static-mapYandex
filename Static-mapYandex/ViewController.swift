//
//  ViewController.swift
//  Static-mapYandex
//
//  Created by Denis Abramov on 02.08.2018.
//  Copyright © 2018 Denis Abramov. All rights reserved.
// 

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func map1(_ sender: Any) {
        loadData(url: "https://static-maps.yandex.ru/1.x/?ll=30.318505,59.939831&size=450,450&z=13&l=map&pt=30.318505,59.939831,pmwtm1~30.38,59.939831,pmwtm9")
    }
    @IBAction func map2(_ sender: Any) {
        loadData(url: "https://static-maps.yandex.ru/1.x/?l=map&bbox=20.6,60.6~35.6,60.6")
    }
    
    @IBAction func map3(_ sender: Any) {
        loadData(url: "https://static-maps.yandex.ru/1.x/?l=map&pl=c:8822DDC0,w:5,37.656577,55.741176,37.656748,55.741419,37.655131,55.741814,37.658257,55.742524,37.659811,55.743066,37.659667,55.743233,37.659551,55.743603,37.659775,55.743928,37.662398,55.745281&pt=37.656577,55.741176,pm2am~37.662398,55.745281,pm2bm")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view, typically from a nib.
    }
        func loadData(url:String) {
            Alamofire.request(url).responseData { response in
                print("All Response Info: \(String(describing: response.value))")
                if let value = response.value {
                    self.imageView.image = UIImage(data: value)
                }
        }
        
        
        func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
}
