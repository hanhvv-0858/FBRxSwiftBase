//
// AppNavigator.swift
// FBRxSwiftBase
//
// Created by Hanh Vu on 10/15/18.
// Copyright © 2018 Framgia. All rights reserved.
//

protocol AppNavigatorType {
    func toLogin()
}

struct AppNavigator: AppNavigatorType {
    unowned let assembler: Assembler
    unowned let window: UIWindow
    
    func toLogin() {
        let nav = UINavigationController()
        let logVC: LoginViewController = assembler.resolve(navigationController: nav)
        nav.viewControllers.append(logVC)
        window.rootViewController = nav
    }
}
