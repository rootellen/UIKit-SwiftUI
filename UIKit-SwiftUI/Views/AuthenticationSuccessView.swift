//
//  AuthenticationSuccessView.swift
//  UIKit-SwiftUI
//
//  Created by Robson Aparecido Moreira on 04/07/22.
//

import UIKit
import SnapKit

class AuthenticationSuccessView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required internal init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct AuthenticationSuccessViewPreviews: PreviewProvider {

    static var previews: some View {
        AuthenticationSuccessView().toPreview()
    }

}
#endif
