//
//  FMModuleA.swift
//  FMModuleA
//
//  Created by FumingLeo on 2025/11/12.
//

import Foundation
import FMModuleCenter

@objc public class FMModuleA: NSObject, @preconcurrency FMModuleCenterProtocol {
    // 注册组件服务
    @MainActor @objc public static func registerService() {
        FMModuleCenter.shared.register(FMModuleAServiceProtocol.self, serviceImpl: FMModuleAServiceImpl())
        print("✅ 已注册服务：\(FMModuleAServiceProtocol.self)")
    }
}

// 组件对外提供的服务
public class FMModuleAServiceImpl:  FMModuleAServiceProtocol {
    public init() {}
    
    public func getAViewController() -> UIViewController {
        // 指定xib所在bundle
        let bundle = Bundle(for: AViewController.self)
        let nibBundleURL = bundle.url(forResource: "FMModuleABundle", withExtension: "bundle")
        let nibBundle = nibBundleURL.flatMap { Bundle(url: $0) }

        // 注意 nibName 不要写 NSStringFromClass，否则会变成 "ModuleA.AViewController"
        return AViewController(nibName: "AViewController", bundle: nibBundle)// .main
    }
}
