//
// AppViewModel.swift
// FBRxSwiftBase
//
// Created by Hanh Vu on 10/15/18.
// Copyright © 2018 Framgia. All rights reserved.
//

struct AppViewModel {
    let navigator: AppNavigatorType
    let useCase: AppUseCaseType
}

// MARK: - ViewModelType
extension AppViewModel: ViewModelType {
    struct Input {
        let loadTrigger: Driver<Void>
    }

    struct Output {
        let toLogin: Driver<Void>
    }

    func transform(_ input: Input) -> Output {
        let toLogin = input.loadTrigger
            .do(onNext: self.navigator.toLogin)
        return Output(toLogin: toLogin)
    }
}
