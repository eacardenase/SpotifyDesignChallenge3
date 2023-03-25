//
//  NSLayoutConstraint+Utils.swift
//  SpotifyDesignChallenge3
//
//  Created by Edwin Cardenas on 3/24/23.
//

import UIKit

public extension NSLayoutConstraint {
    @objc func setActiveBreakable(priority: UILayoutPriority = UILayoutPriority(900)) {
        self.priority = priority
        isActive = true
    }
}
