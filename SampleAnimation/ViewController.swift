//
//  ViewController.swift
//  SampleAnimation
//
//  Created by s247 on 2018/01/05.
//  Copyright © 2018年 ami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var targetView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func startAnimation(_ sender: Any) {
        //ビューの角を丸める処理をアニメーションで表現する
        let animation = CABasicAnimation(keyPath: "cornerRadius")
        
        //アニメーションの変化のタイミングを設定
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionDefault)
        
        //変更前の値(アニメーション)は0
        animation.fromValue = 0
        
        //変更後の値は20
        animation.toValue = 20
        
        //アニメーションの時間は1秒
        animation.duration = 1
        
        //アニメーションをレイヤーに追加
        targetView.layer.add(animation, forKey: "cornerRadius")
        
        //アニメーション終了後の角を丸くする
        targetView.layer.cornerRadius = 20
        
        //短縮させた書き方
        targetView.alpha = 1
        UIView.animate(withDuration: 1) {
            self.targetView.alpha = 0
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

