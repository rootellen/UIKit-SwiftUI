//
//  SecurityAuthenticationView.swift
//  UIKit-SwiftUI
//
//  Created by Robson Aparecido Moreira on 04/07/22.
//

import UIKit
import SnapKit

class SecurityAuthenticationView: UIView {
    
    private lazy var titleLabel: UILabel = {
        let sentence = "Olá, Fulano de Tal."
        
        let regularAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15), NSAttributedString.Key.foregroundColor: UIColor.black]
        let boldyAttributes = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 15), NSAttributedString.Key.foregroundColor: UIColor.black]
        
        let attributed = NSMutableAttributedString(string: sentence, attributes: regularAttributes)
        attributed.setAttributes(boldyAttributes, range: NSRange(location: 5, length: sentence.count - 5))
        
        let label = UILabel()
        label.attributedText = attributed
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var subTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Identificamos a seguinte transação no seu cartão Visa Débito:"
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var cardView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        view.layer.cornerRadius = 8.0
        view.layer.shadowColor = UIColor.gray.cgColor
        view.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        view.layer.shadowRadius = 6.0
        view.layer.shadowOpacity = 0.7
        return view
    }()
    
    private lazy var establishmentTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Estabelecimento"
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    private lazy var establishmentValueLabel: UILabel = {
        let boldText = "Dafiti"
        let attrs = [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 15)]
        
        let label = UILabel()
        label.attributedText = NSMutableAttributedString(string: boldText, attributes: attrs)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    private lazy var purchaseDateTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Data da compra"
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    private lazy var purchaseDateValueLabel: UILabel = {
        let boldText = "14/4/2022"
        let attrs = [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 15)]
        
        let label = UILabel()
        label.attributedText = NSMutableAttributedString(string: boldText, attributes: attrs)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    private lazy var purchaseTimeTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Horário"
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    private lazy var purchaseTimeValueLabel: UILabel = {
        let boldText = "18:00"
        let attrs = [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 15)]
        
        let label = UILabel()
        label.attributedText = NSMutableAttributedString(string: boldText, attributes: attrs)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    private lazy var infoLabel: UILabel = {
        let boldText = "Você reconhece essa compra?"
        let attrs = [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 15)]
        
        let label = UILabel()
        label.attributedText = NSMutableAttributedString(string: boldText, attributes: attrs)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    private lazy var recognizeButton: UIButton = {
        let button = UIButton()
        return button
    }()
    
    private lazy var notRecognizeButton: UIButton = {
        let button = UIButton()
        return button
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

}

extension SecurityAuthenticationView {
    
    func buildViews() {
        cardView.addSubviews(establishmentTitleLabel, establishmentValueLabel, purchaseDateTitleLabel, purchaseDateValueLabel, purchaseTimeTitleLabel, purchaseTimeValueLabel)
        addSubviews(titleLabel, subTitleLabel, cardView, infoLabel, recognizeButton, notRecognizeButton)
    }
    
    func configConstraints() {
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(36)
            make.trailing.equalToSuperview()
            make.leading.equalToSuperview()
        }
        
        subTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(24)
            make.trailing.equalToSuperview()
            make.leading.equalToSuperview()
        }
        
        cardView.snp.makeConstraints { make in
            make.top.equalTo(subTitleLabel.snp.bottom).offset(24)
            make.trailing.equalToSuperview()
            make.leading.equalToSuperview()
        }
        
        establishmentTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(cardView.snp.top).offset(24)
            make.trailing.equalToSuperview().inset(24)
            make.leading.equalToSuperview().offset(24)
        }
        
        establishmentValueLabel.snp.makeConstraints { make in
            make.top.equalTo(establishmentTitleLabel.snp.bottom).offset(2)
            make.trailing.equalToSuperview().inset(24)
            make.leading.equalToSuperview().offset(24)
        }
        
        purchaseDateTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(establishmentValueLabel.snp.bottom).offset(16)
            make.trailing.equalToSuperview().inset(24)
            make.leading.equalToSuperview().offset(24)
        }
        
        purchaseDateValueLabel.snp.makeConstraints { make in
            make.top.equalTo(purchaseDateTitleLabel.snp.bottom).offset(2)
            make.trailing.equalToSuperview().inset(24)
            make.leading.equalToSuperview().offset(24)
        }
        
        purchaseTimeTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(purchaseDateValueLabel.snp.bottom).offset(16)
            make.trailing.equalToSuperview().inset(24)
            make.leading.equalToSuperview().offset(24)
        }
        
        purchaseTimeValueLabel.snp.makeConstraints { make in
            make.top.equalTo(purchaseTimeTitleLabel.snp.bottom).offset(2)
            make.trailing.equalToSuperview().inset(24)
            make.leading.equalToSuperview().offset(24)
        }
    }
    
}

#if DEBUG
import SwiftUI

@available(iOS 13, *)
struct SecurityAuthenticationViewPreviews: PreviewProvider {

    static var previews: some View {
        SecurityAuthenticationView().toPreview()
    }

}
#endif
