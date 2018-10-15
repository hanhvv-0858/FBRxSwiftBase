//
// AppViewModelTests.swift
// FBRxSwiftBase
//
// Created by Hanh Vu on 10/15/18.
// Copyright © 2018 Framgia. All rights reserved.
//

@testable import FBRxSwiftBase
import XCTest
import RxSwift
import RxBlocking

final class AppViewModelTests: XCTestCase {
    private var viewModel: AppViewModel!
    private var navigator: AppNavigatorMock!
    private var useCase: AppUseCaseMock!
    private var disposeBag: DisposeBag!

    override func setUp() {
        super.setUp()
        navigator = AppNavigatorMock()
        useCase = AppUseCaseMock()
        viewModel = AppViewModel(navigator: navigator, useCase: useCase)
        disposeBag = DisposeBag()
    }
}
