//
//  ViewController.swift
//  gifAnimate
//
//  Created by 王昱淇 on 2021/8/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var boka: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        let boka1ImageView = UIImageView(frame: CGRect(x: 107, y: 30, width: 200, height: 150))
        
        view.addSubview(boka1ImageView)
        
        let boka1AnimatedImage = UIImage.animatedImageNamed("boka1-", duration: 0.6)
        
        boka1ImageView.image = boka1AnimatedImage
        
        // 霍爾的移動城堡圖片輪播
        let castleImageView = UIImageView(frame: CGRect(x: 57, y: 200, width: 300, height: 162))
        view.addSubview(castleImageView)
        var castleImages = [UIImage]()
        for i in 0...9 {
            castleImages.append(UIImage(named: "霍爾的移動城堡-\(i)")!)
        }
        castleImageView.animationImages = castleImages
        castleImageView.animationDuration = 10
        castleImageView.animationRepeatCount = 2
       // 設定 image view 的圖片為動畫的最後一張圖。
        castleImageView.image = castleImages.last
        castleImageView.startAnimating()
    
        // 紅豬圖片輪播
        let pigImageView = UIImageView(frame: CGRect(x: 57, y: 400, width: 300, height: 162))
        view.addSubview(pigImageView)
        var pigImages = [UIImage]()
        for i in 0...14 {
            pigImages.append(UIImage(named: "紅豬-\(i)")!)
        }
        pigImageView.animationImages = pigImages
        pigImageView.animationDuration = 15
        pigImageView.animationRepeatCount = 2
        pigImageView.image = pigImages.last
        pigImageView.startAnimating()
        
        // 龍貓圖片輪播
        let totoroImageView = UIImageView(frame: CGRect(x: 57, y: 600, width: 300, height: 162))
        view.addSubview(totoroImageView)
        var totoroImages = [UIImage]()
        for i in 0...20 {
            totoroImages.append(UIImage(named: "龍貓-\(i)")!)
        }
        totoroImageView.animationImages = totoroImages
        totoroImageView.animationDuration = 21
        totoroImageView.animationRepeatCount = 2
        totoroImageView.image = totoroImages.last
        totoroImageView.startAnimating()
        
        
    }


}

