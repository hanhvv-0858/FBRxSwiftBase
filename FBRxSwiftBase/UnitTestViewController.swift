//
//  UnitTestViewController.swift
//  FBRxSwiftBase
//
//  Created by vu.van.hanh on 10/15/18.
//  Copyright © 2018 Zoro Vu. All rights reserved.
//

import UIKit
final class UnitTestViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

// MARK: - StoryboardSceneBased
extension UnitTestViewController: StoryboardSceneBased {
    static var sceneStoryboard = Storyboards.login
}
