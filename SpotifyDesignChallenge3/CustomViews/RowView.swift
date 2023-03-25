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
    
    init(labelText: String, switchState: Bool) {
        self.labelText = labelText
        self.switchState = switchState
        
        super.init(frame: .zero)
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 31)
    }
}

extension RowView {
    func setupViews() {
        let label = Factory.makeLabel(withText: labelText)
        let switchState = Factory.makeSwtich(isOn: switchState)
        
        addSubview(label)
        addSubview(switchState)
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: topAnchor),
            label.leadingAnchor.constraint(equalTo: leadingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            switchState.centerYAnchor.constraint(equalTo: label.centerYAnchor),
            switchState.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
}
