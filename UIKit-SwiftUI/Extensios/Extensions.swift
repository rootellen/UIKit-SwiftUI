//
//  Extensions.swift
//  ViaVarejo
//
//  Created by Robson Moreira on 02/05/22.
//

import Foundation

#if DEBUG
import SwiftUI

@available(iOS 13, *)
extension UIView {
    private struct Preview: UIViewRepresentable {
        
        let view: UIView

        func makeUIView(context: Context) -> UIView {
            return view
        }

        func updateUIView(_ uiViewController: UIView, context: Context) {
        }
    }

    func toPreview() -> some View {
        Preview(view: self)
    }
    
    public func addSubviews(_ subviews: UIView...) {
        subviews.forEach(addSubview)
    }
}


@available(iOS 13, *)
extension UIViewController {
    private struct Preview: UIViewControllerRepresentable {
        
        let viewController: UIViewController

        func makeUIViewController(context: Context) -> UIViewController {
            return viewController
        }

        func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        }
    }

    func toPreview() -> some View {
        Preview(viewController: self)
    }
}
#endif
