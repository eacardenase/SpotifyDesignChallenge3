//
//  ViewController.swift
//  SpotifyDesignChallenge3
//
//  Created by Edwin Cardenas on 3/24/23.
//

import UIKit

class ViewController: UIViewController {
    
    let margin: CGFloat = 20
    let spacing: CGFloat = 32

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationBar()
        setupViews()
    }
}

extension ViewController {
    func setupNavigationBar() {
        navigationItem.title = "Playback"
    }
    
    func setupViews() {
        let rowView = RowView(labelText: "Offline", switchState: false)
        let crossfadeView = CrossfadeView()

        rowView.translatesAutoresizingMaskIntoConstraints = false
        crossfadeView.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(rowView)
        view.addSubview(crossfadeView)

        NSLayoutConstraint.activate([
            rowView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: margin),
            rowView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin),
            rowView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -margin)
        ])
        
        NSLayoutConstraint.activate([
            crossfadeView.topAnchor.constraint(equalTo: rowView.bottomAnchor, constant: spacing),
            crossfadeView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: margin),
            crossfadeView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -margin)
        ])
    }
}
