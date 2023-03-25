//
//  CrossfadeView.swift
//  SpotifyDesignChallenge3
//
//  Created by Edwin Cardenas on 3/24/23.
//

import UIKit

class CrossfadeView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 100)
    }
}

extension CrossfadeView {
    func setupViews() {
        let crossfadeLabel = Factory.makeTertiaryLabel(withText: "Crossfade")
        let crossfadeMinLabel = Factory.makeSecondaryLabel(withText: "0s")
        let crossfadeProgressView = Factory.makeProgressView()
        let crossfadeMaxLabel = Factory.makeSecondaryLabel(withText: "12s")
        
        addSubview(crossfadeLabel)
        addSubview(crossfadeMinLabel)
        addSubview(crossfadeProgressView)
        addSubview(crossfadeMaxLabel)
        
        NSLayoutConstraint.activate([
            crossfadeLabel.topAnchor.constraint(equalTo: topAnchor),
            crossfadeLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            crossfadeMinLabel.topAnchor.constraint(equalTo: crossfadeLabel.bottomAnchor, constant: 32),
            crossfadeMinLabel.leadingAnchor.constraint(equalTo: leadingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            crossfadeProgressView.centerYAnchor.constraint(equalTo: crossfadeMinLabel.centerYAnchor),
            crossfadeProgressView.leadingAnchor.constraint(equalTo: crossfadeMinLabel.trailingAnchor, constant: 8),
        ])
        
        NSLayoutConstraint.activate([
            crossfadeMaxLabel.centerYAnchor.constraint(equalTo: crossfadeMinLabel.centerYAnchor),
            crossfadeMaxLabel.leadingAnchor.constraint(equalTo: crossfadeProgressView.trailingAnchor, constant: 8),
            crossfadeMaxLabel.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
}
