//
//  ViewController.swift
//  FMModuleA
//
//  Created by MrLfm on 11/19/2025.
//  Copyright (c) 2025 MrLfm. All rights reserved.
//

import UIKit
import FMModuleCenter
import FMModuleBase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 从base组件获取图片资源
        let image = UIImage(named: "1", in: .base, with: nil)
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFill
        view.addSubview(imageView)
        imageView.frame = view.bounds
        view.sendSubviewToBack(imageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let vc = FMModuleCenter.shared.get(FMModuleAServiceProtocol.self)?.getAViewController()
        if let vc = vc {
            present(vc, animated: true)
        }
        else {
            print("getAViewController()失败！没有注册服务：FMModuleAServiceProtocol")
        }
    }
}

