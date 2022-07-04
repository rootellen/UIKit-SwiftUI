//
//  ContentView.swift
//  UIKit-SwiftUI
//
//  Created by Robson Aparecido Moreira on 04/07/22.
//

import UIKit
import SnapKit

class ContentView: UIView {
    
    private lazy var navigationBar: UINavigationBar = {
        let navItem = UINavigationItem(title: "Autenticação de Segurança")
        let doneItem = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(close))
        navItem.rightBarButtonItem = doneItem
        
        let navigationBar = UINavigationBar()
        navigationBar.backgroundColor = .red
        navigationBar.setItems([navItem], animated: false)
        return navigationBar
    }()
    
    private lazy var securityAuthenticationView: SecurityAuthenticationView = {
        let view = SecurityAuthenticationView()
        return view
    }()
    
    private lazy var authenticationSuccessView: AuthenticationSuccessView = {
        let view = AuthenticationSuccessView()
        view.isHidden = true
        return view
    }()
    
    private lazy var authenticationErrorView: AuthenticationErrorView = {
        let view = AuthenticationErrorView()
        view.isHidden = true
        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required internal init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        buildViews()
        configConstraints()
    }
    
    @objc private func close() {
        print("Close")
    }

}

extension ContentView {
    
    func buildViews() {
        addSubviews(navigationBar, securityAuthenticationView, authenticationSuccessView, authenticationErrorView)
    }
    
    func configConstraints() {
        navigationBar.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.trailing.equalToSuperview()
            make.leading.equalToSuperview()
            make.bottom.equalTo(securityAuthenticationView.snp.top)
        }
        
        securityAuthenticationView.snp.makeConstraints { make in
            make.top.equalTo(navigationBar.snp.bottom)
            make.trailing.equalToSuperview().inset(20)
            make.leading.equalToSuperview().offset(20)
            make.bottom.equalToSuperview()
        }
        
        authenticationSuccessView.snp.makeConstraints { make in
            make.top.equalTo(navigationBar.snp.bottom)
            make.trailing.equalToSuperview().inset(20)
            make.leading.equalToSuperview().offset(20)
            make.bottom.equalToSuperview()
        }

        authenticationErrorView.snp.makeConstraints { make in
            make.top.equalTo(navigationBar.snp.bottom)
            make.trailing.equalToSuperview().inset(20)
            make.leading.equalToSuperview().offset(20)
            make.bottom.equalToSuperview()
        }
    }
    
}

#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct ContentViewPreviews: PreviewProvider {

    static var previews: some View {
        ContentView().toPreview()
    }

}
#endif
