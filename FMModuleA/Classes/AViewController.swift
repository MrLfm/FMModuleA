//
//  AViewController.swift
//  FMModuleA
//
//  Created by FumingLeo on 2025/11/12.
//

import UIKit
import FMModuleCenter
import FMModuleBase

class AViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 从base组件获取图片资源
        let image = UIImage(named: "2", in: Bundle.base, with: nil)
        let imageView = UIImageView(image: image)
        imageView.contentMode = UIView.ContentMode.scaleAspectFill
        view.addSubview(imageView)
        imageView.frame = view.bounds
        view.insertSubview(imageView, at: 0)
    }

    @IBAction func presentB(_ sender: Any) {
        let vc = FMModuleCenter.shared.get(FMModuleBServiceProtocol.self)?.getBViewController()
        if let vc = vc {
            present(vc, animated: true)
        }
        else {
            print("getBViewController()失败！没有注册服务：FMModuleBServiceProtocol")
        }
    }

    @IBAction func back(_ sender: Any) {
        dismiss(animated: true)
    }
}
