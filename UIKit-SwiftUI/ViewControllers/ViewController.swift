//
//  ViewController.swift
//  UIKit-SwiftUI
//
//  Created by Robson Aparecido Moreira on 04/07/22.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private lazy var contentView: ContentView = {
        let view = ContentView()
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews() {
        buildViews()
        configConstraints()
    }

}

extension ViewController {
    
    func buildViews() {
        view.addSubview(contentView)
    }
    
    func configConstraints() {
        contentView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(44)
            make.trailing.equalToSuperview()
            make.leading.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
    
}

#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct ViewControllerPreviews: PreviewProvider {
    
    static var previews: some View {
        ViewController().toPreview()
    }
    
}
#endif
