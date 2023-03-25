//
//  RowView.swift
//  SpotifyDesignChallenge3
//
//  Created by Edwin Cardenas on 3/24/23.
//

import UIKit

class RowView: UIView {
    
    let labelText: String
    let switchState: Bool
    
    init(labelText: String, isOn: Bool) {
        self.labelText = labelText
        self.switchState = isOn
        
        super.init(frame: .zero)
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // A suggestion about size, but one that can be overriden
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 31)
    }
}

extension RowView {
    func setupViews() {
        let label = Factory.makeLabel(withText: labelText)
        let onOffSwitch = Factory.makeSwtich(isOn: switchState)
        
        addSubview(label)
        addSubview(onOffSwitch)
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: topAnchor),
            label.leadingAnchor.constraint(equalTo: leadingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            onOffSwitch.centerYAnchor.constraint(equalTo: label.centerYAnchor),
            onOffSwitch.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
        
//        let stackView = UIStackView()
//        let label = Factory.makeLabel(withText: labelText)
//        let switchState = Factory.makeSwtich(isOn: switchState)
//
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        stackView.axis = .horizontal
//        stackView.distribution = .fill
//        stackView.alignment = .center
//
//        stackView.addArrangedSubview(label)
//        stackView.addArrangedSubview(switchState)
//
//        addSubview(stackView)
//
//        NSLayoutConstraint.activate([
//            stackView.topAnchor.constraint(equalTo: topAnchor),
//            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
//            stackView.trailingAnchor.constraint(equalTo: trailingAnchor)
//        ])
    }
}
